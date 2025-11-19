import React, { useState } from "react";
import './App.css';

function App() {
  const [file, setFile] = useState(null);
  const [result, setResult] = useState(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);
  const [preview, setPreview] = useState(null);

  const handleFileChange = (e) => {
    const selectedFile = e.target.files[0];
    setFile(selectedFile);
    setError(null);
    
    if (selectedFile) {
      const reader = new FileReader();
      reader.onload = () => {
        setPreview(reader.result);
      };
      reader.readAsDataURL(selectedFile);
    } else {
      setPreview(null);
    }
  };

  const handleUpload = async () => {
    if (!file) {
      setError("Te rugăm să selectezi un fișier înainte de încărcare.");
      return;
    }
    
    setLoading(true);
    setError(null);
    
    try {
      const formData = new FormData();
      formData.append("file", file);

      const API_BASE = process.env.REACT_APP_API_BASE;
      const response = await fetch(`${API_BASE}/upload`, {
        method: "POST",
        body: formData,
      });
      
      if (!response.ok) {
        throw new Error(`Eroare server: ${response.status}`);
      }

      const data = await response.json();
      setResult(data);
    } catch (err) {
      setError(`Eroare la încărcare: ${err.message}`);
      console.error(err);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="app-container">
      <header className="app-header">
        <h1>Image Tagging</h1>
      </header>
      
      <main className="app-content">
        <h2>Încarcă o imagine pentru etichetare</h2>
        
        <div className="upload-container">
          <div className="file-input-container">
            <label className="file-input-label">
              <input 
                type="file" 
                onChange={handleFileChange} 
                accept="image/*"
                className="file-input"
              />
              <span className="file-input-button">Alege fișier</span>
              <span className="file-name">{file ? file.name : "Niciun fișier selectat"}</span>
            </label>
          </div>
          
          {preview && (
            <div className="image-preview">
              <img src={preview} alt="Previzualizare" />
            </div>
          )}
          
          <button 
            className="upload-button" 
            onClick={handleUpload}
            disabled={loading || !file}
          >
            {loading ? "Se încarcă..." : "Încarcă"}
          </button>
          
          {loading && (
            <div className="loading-indicator">
              <div className="spinner"></div>
              <p>Se procesează imaginea, te rugăm să aștepți...</p>
            </div>
          )}
          
          {error && (
            <div className="error-message">
              {error}
            </div>
          )}
        </div>

        {result && !loading && (
          <div className="result-container">
            <h3>Rezultat:</h3>
            <div className="result-details">
              <p><strong>Fișier:</strong> {result.filename}</p>
              <p>
                <strong>Blob URL:</strong> 
                <a href={result.blobUrl} target="_blank" rel="noreferrer">{result.blobUrl}</a>
              </p>
              <div className="tags-container">
                <strong>Tag-uri:</strong>
                <div className="tags-list">
                  {result.tags.map((tag, index) => (
                    <span key={index} className="tag">{tag}</span>
                  ))}
                </div>
              </div>
            </div>
          </div>
        )}
      </main>
      
      <footer className="app-footer">
        <p>© 2025 Image Tagging System</p>
      </footer>
    </div>
  );
}

export default App;
