from fastapi import FastAPI, File, UploadFile, HTTPException
from fastapi.responses import JSONResponse
from fastapi.middleware.cors import CORSMiddleware
from azure.storage.blob import BlobServiceClient, ContentSettings, generate_blob_sas, BlobSasPermissions
import os
import uuid
from datetime import datetime, timedelta
import urllib.parse

try:
    import pyodbc
    import requests
    AZURE_AVAILABLE = True
except ImportError:
    AZURE_AVAILABLE = False

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Configuri Azure
BLOB_CONNECTION_STRING = os.getenv("BLOB_CONNECTION_STRING")
BLOB_ACCOUNT_KEY = os.getenv("BLOB_ACCOUNT_KEY")
BLOB_CONTAINER_NAME = "uploads"
VISION_ENDPOINT = os.getenv("VISION_ENDPOINT")
VISION_KEY = os.getenv("VISION_KEY")
SQL_CONNECTION_STRING = os.getenv("SQL_CONNECTION_STRING")

AZURE_CONFIGURED = BLOB_CONNECTION_STRING and VISION_ENDPOINT and VISION_KEY and BLOB_ACCOUNT_KEY

@app.post("/upload")
async def upload_file(file: UploadFile = File(...)):
    try:
        filename = file.filename
        unique_filename = f"{uuid.uuid4()}-{filename}"
        file_content = await file.read()

        if AZURE_AVAILABLE and AZURE_CONFIGURED:
            try:
                blob_service = BlobServiceClient.from_connection_string(BLOB_CONNECTION_STRING)
                container_client = blob_service.get_container_client(BLOB_CONTAINER_NAME)
                if not container_client.exists():
                    container_client.create_container()

                blob_client = container_client.get_blob_client(unique_filename)
                blob_client.upload_blob(
                    file_content,
                    overwrite=True,
                    content_settings=ContentSettings(content_type=file.content_type)
                )

                # Generează link SAS
                sas_token = generate_blob_sas(
                    account_name=blob_service.account_name,
                    container_name=BLOB_CONTAINER_NAME,
                    blob_name=unique_filename,
                    account_key=BLOB_ACCOUNT_KEY,
                    permission=BlobSasPermissions(read=True),
                    expiry=datetime.utcnow() + timedelta(minutes=10)
                )

                blob_url = f"https://{blob_service.account_name}.blob.core.windows.net/{BLOB_CONTAINER_NAME}/{unique_filename}?{sas_token}"

                # Trimite către Vision API
                vision_url = VISION_ENDPOINT + "/vision/v3.2/tag"
                headers = {
                    "Ocp-Apim-Subscription-Key": VISION_KEY,
                    "Content-Type": "application/json"
                }
                data = {"url": blob_url}

                response = requests.post(vision_url, headers=headers, json=data)
                if response.status_code != 200:
                    raise HTTPException(status_code=response.status_code,
                                        detail=f"Vision API error: {response.text}")

                tags = response.json().get("tags", [])
                tag_names = [tag['name'] for tag in tags]

                # Salvează în SQL
                try:
                    conn = pyodbc.connect(SQL_CONNECTION_STRING)
                    cursor = conn.cursor()
                    cursor.execute("""
                        INSERT INTO ProcessedFiles (FileName, BlobUrl, Tags)
                        VALUES (?, ?, ?)
                    """, filename, blob_url, ", ".join(tag_names))
                    conn.commit()
                    cursor.close()
                    conn.close()
                except Exception as e:
                    print(f"SQL error: {str(e)}")

                return JSONResponse({
                    "filename": filename,
                    "blobUrl": blob_url,
                    "tags": tag_names,
                    "mode": "azure"
                })

            except Exception as e:
                print(f"Error with Azure services: {str(e)}")
                return fallback_processing(filename, file_content)
        else:
            return fallback_processing(filename, file_content)

    except Exception as e:
        print(f"Error processing upload: {str(e)}")
        raise HTTPException(status_code=500, detail=str(e))

def fallback_processing(filename, file_content):
    unique_id = str(uuid.uuid4())
    mock_url = f"http://local-mock-storage/{unique_id}/{filename}"
    mock_tags = ["test", "demo", "image", "local"]

    print(f"Mock processed image: {filename} with ID {unique_id}")
    return JSONResponse({
        "filename": filename,
        "blobUrl": mock_url,
        "tags": mock_tags,
        "mode": "local_mock"
    })
