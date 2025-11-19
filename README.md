# Distributed System on Kubernetes

## Overview
This repository contains a complete sample distributed system meant to be deployed on a local or remote Kubernetes cluster. It combines three domains:

1. **Real-time chat** – A Spring Boot WebSocket/API backend that persists chat messages in MongoDB and a React single-page application that consumes both the WebSocket feed and the REST API.
2. **Image tagging pipeline** – A FastAPI backend that uploads images to Azure Blob Storage, enriches them via Azure Vision, persists metadata in SQL, and exposes the results to a React dashboard with live previews. When Azure resources are unavailable the backend automatically falls back to a mocked in-memory flow.
3. **Content management** – A pre-configured Joomla installation that runs on top of a custom MariaDB image seeded with the required schema and data.

All application containers are built locally (see [`build-push.sh`](./build-push.sh)) and are exposed inside the cluster through the Kubernetes manifests in [`k8s-deploy/`](./k8s-deploy/).

## Repository structure
| Path | Description |
| --- | --- |
| `chat-backend/` | Spring Boot 3.2 (Java 21) service that exposes REST (`/api/messages`) and WebSocket (`/chat`) endpoints backed by MongoDB. |
| `chat-frontend/` | React SPA served by NGINX that provides a live chat UI with WebSocket + polling fallbacks. |
| `ia-backend/` | FastAPI service that streams uploads to Azure Blob Storage, calls Azure Vision, and writes results through ODBC; includes a local mock mode. |
| `ia-frontend/` | React SPA that lets users upload an image, preview it, and inspect the generated tags returned by the backend. |
| `joomla-custom/` | Docker build context for a Joomla site pre-populated from `joomla-site.tar.gz`. |
| `mariadb-custom/` | MariaDB image that seeds the Joomla schema/data via `joomla-final.sql`. |
| `k8s-deploy/` | Deployment and Service manifests for every component plus MongoDB and supporting secrets. |

## Service breakdown
### Chat backend (`chat-backend/`)
* Built with Gradle (`Dockerfile` uses a multi-stage Gradle 8.5 → Temurin 21 pipeline).
* Stores messages in MongoDB configured via `spring.data.mongodb.uri` (`src/main/resources/application.properties`).
* REST controller (`ChatController`) persists messages and broadcasts them to WebSocket clients via `ChatSocketHandler`.
* `MessageService` continuously polls MongoDB for new records and rebroadcasts them—this keeps REST-ingested messages in sync with WebSocket clients.
* Listens on port **88** inside the container and is exposed through the `chat-backend-service` NodePort (**30088**).

### Chat frontend (`chat-frontend/`)
* Create React App UI tailored for the live chat use case (`src/App.js`).
* Establishes a WebSocket connection to `ws://<host>/chat` and falls back to polling `/api/messages/latest` when the socket disconnects.
* Uses `npm run build` → NGINX for production; exposed through NodePort **30090**.

### Image tagging backend (`ia-backend/`)
* FastAPI application (`main.py`) served by Uvicorn on port **8000**.
* Relies on the following environment variables (injected via the `azure-secrets` Kubernetes Secret):
  * `BLOB_CONNECTION_STRING`, `BLOB_ACCOUNT_KEY`, `VISION_ENDPOINT`, `VISION_KEY`, `SQL_CONNECTION_STRING`.
* Accepts uploads at `POST /upload`, streams them to Azure Blob Storage, requests tags from the Vision API, writes metadata to SQL via `pyodbc`, and returns `{ filename, blobUrl, tags, mode }`.
* When Azure is not configured or dependencies fail it returns a mock response with deterministic demo tags to keep the frontend usable.
* Exposed through NodePort **30800** as `image-backend-service`.

### Image tagging frontend (`ia-frontend/`)
* Create React App UI (`src/App.js`) that lets users select an image, preview it, and invoke the backend.
* Reads the backend origin from `REACT_APP_API_BASE` (e.g., `http://localhost:30800`).
* Lists the file name, a clickable Blob URL, and the tags returned by the backend; served via NodePort **30086**.

### Joomla + MariaDB
* `joomla-custom/Dockerfile` unwraps `joomla-site.tar.gz` into `/var/www/html` on top of the `joomla:php8.2-apache` base image.
* `mariadb-custom/Dockerfile` sets up credentials (`joomla/parola123`) and seeds the database through `joomla-final.sql` placed in `/docker-entrypoint-initdb.d/`.
* Kubernetes manifests deploy MariaDB (`joomla-db`) and Joomla (3 replicas) with an init container that waits for the database before starting Apache. Joomla is exposed at NodePort **30080**.

### Supporting infrastructure
* `mongo` Deployment/Service provides persistence for the chat backend (`mongodb://mongo:27017/chatdb`).
* `32-joomla-db-secret.yaml` stores the base64-encoded MariaDB credentials used by Joomla (mirrors the values baked into the custom image to simplify demos).

## Local development
### Prerequisites
* Java 21, Node.js 18+, Python 3.11+, Docker, kubectl, and (optionally) a local Kubernetes cluster such as kind or k3d with a registry reachable at `localhost:32000`.
* MongoDB and MariaDB instances if you plan to run services outside of Kubernetes.

### Chat backend
```bash
cd chat-backend
./gradlew bootRun
```
The service listens on port `88`; either start MongoDB locally (`mongodb://localhost:27017/chatdb`) or override `spring.data.mongodb.uri`.

### Chat frontend
```bash
cd chat-frontend
npm install
npm start
```
In development the React dev server proxies REST calls to `http://localhost:88` (configure using `package.json`'s `proxy` field) and WebSocket calls to `ws://localhost:88/chat`.

### Image tagging backend
```bash
cd ia-backend
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
uvicorn main:app --reload --host 0.0.0.0 --port 8000
```
Set the Azure variables listed above. Leave them unset to exercise the mock code path.

### Image tagging frontend
```bash
cd ia-frontend
npm install
REACT_APP_API_BASE=http://localhost:8000 npm start
```

## Building and publishing container images
Use [`build-push.sh`](./build-push.sh) to produce all images and push them to your registry.
```bash
# optional: override the registry (defaults to localhost:32000)
REGISTRY=my-registry.example.com ./build-push.sh
```
The script builds/pushes the chat frontend + backend, image tagging frontend + backend, Joomla, and MariaDB images in sequence.

## Kubernetes deployment workflow
1. **Create secrets** – provide Azure credentials + SQL connection info for the image tagging backend:
   ```bash
   kubectl create secret generic azure-secrets \
     --from-literal=blob="<connection-string>" \
     --from-literal=blobkey="<account-key>" \
     --from-literal=vision="<vision-api-key>" \
     --from-literal=sql="Driver={ODBC Driver 17 for SQL Server};Server=<server>;Database=<db>;Uid=<user>;Pwd=<pass>;"
   ```
2. **Apply manifests** – `kubectl apply -f k8s-deploy/` (the file names are numbered so dependencies—Mongo, MariaDB, Joomla—start before consumers).
3. **Verify pods** – `kubectl get pods` until everything is `Running`.
4. **Reach the services** via the published NodePorts:

| Service | URL (NodePort) |
| --- | --- |
| Chat frontend | `http://<node-ip>:30090` |
| Chat backend REST/WebSocket | `http://<node-ip>:30088` / `ws://<node-ip>:30088/chat` |
| Image tagging frontend | `http://<node-ip>:30086` |
| Image tagging backend | `http://<node-ip>:30800/upload` |
| Joomla | `http://<node-ip>:30080` |

When running on kind, use `kubectl port-forward svc/<service> <local-port>:<service-port>` if NodePorts are not reachable directly.

## Troubleshooting tips
* **WebSocket disconnects** – the chat frontend automatically falls back to REST polling. Inspect the browser console to ensure `/api/messages/latest` is reachable.
* **Azure dependencies** – set `AZURE_AVAILABLE=false` by simply unsetting the blob/vision variables; the backend will switch to mock mode and log the fallback in the container logs.
* **Database readiness** – Joomla waits for `joomla-db:3306` via the init container; if pods loop on `CrashLoopBackOff`, inspect the MariaDB logs first.
