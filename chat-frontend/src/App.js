import React, { useEffect, useRef, useState } from "react";
import './App.css';

function App() {
  // Starea utilizatorului și a mesajului curent
  const [username, setUsername] = useState("user");
  const [message, setMessage] = useState("");

  // Lista mesajelor primite
  const [log, setLog] = useState([]);

  // Starea conexiunii WebSocket
  const [connected, setConnected] = useState(false);

  // Referințe pentru WebSocket, scroll, timestamp și polling
  const socketRef = useRef(null);
  const messagesEndRef = useRef(null);
  const latestTimestampRef = useRef(null);
  const pollingIntervalRef = useRef(null);

  // Pornirea polling-ului pentru a detecta mesaje noi prin REST (fallback dacă WebSocket pică)
  const startPolling = () => {
    if (pollingIntervalRef.current) {
      clearInterval(pollingIntervalRef.current);
    }

    pollingIntervalRef.current = setInterval(() => {
      if (!latestTimestampRef.current) return;

      const timestamp = encodeURIComponent(latestTimestampRef.current);
      fetch(`/api/messages/latest?since=${timestamp}`)
        .then(res => res.json())
        .then(data => {
          if (Array.isArray(data) && data.length > 0) {
            setLog(prev => {
              const uniqueNewMessages = data.filter(newMsg =>
                !prev.some(existingMsg =>
                  existingMsg.id === newMsg.id ||
                  (existingMsg.timestamp === newMsg.timestamp &&
                   existingMsg.content === newMsg.content &&
                   existingMsg.sender === newMsg.sender)
                )
              );

              if (uniqueNewMessages.length > 0) {
                // Actualizează timestampul cel mai nou
                const latestMessage = [...uniqueNewMessages].sort((a, b) =>
                  new Date(b.timestamp) - new Date(a.timestamp)
                )[0];
                latestTimestampRef.current = latestMessage.timestamp;
                return [...prev, ...uniqueNewMessages];
              }

              return prev;
            });
          }
        })
        .catch(err => console.error("Eroare polling:", err));
    }, 1500);
  };

  // Efect principal care pornește aplicația (conectează WebSocket și pornește polling)
  useEffect(() => {
    // Inițial, încarcă cele mai recente mesaje
    fetch(`/api/messages?page=0&size=20`)
      .then(res => res.json())
      .then(data => {
        if (Array.isArray(data)) {
          setLog(data);
          if (data.length > 0) {
            latestTimestampRef.current = data[data.length - 1]?.timestamp;
          }
        }
      });

    // Creează conexiunea WebSocket
    const connectWebSocket = () => {
      const socket = new WebSocket(`ws://${window.location.host}/chat`);
      socketRef.current = socket;

      socket.onopen = () => {
        console.log("✅ WebSocket conectat");
        setConnected(true);
      };

      socket.onclose = () => {
        console.warn("⚠️ WebSocket închis. Reconectare în 2 secunde...");
        setConnected(false);
        setTimeout(connectWebSocket, 2000); // reconectare automată
      };

      socket.onerror = (err) => {
        console.error("Eroare WebSocket:", err);
        setConnected(false);
        socket.close();
      };

      socket.onmessage = (event) => {
        try {
          const data = JSON.parse(event.data);
          latestTimestampRef.current = data.timestamp;

          // Evită dublarea mesajelor
          setLog(prev => {
            const alreadyExists = prev.some(m =>
              m.id === data.id ||
              (m.timestamp === data.timestamp &&
               m.content === data.content &&
               m.sender === data.sender)
            );
            return alreadyExists ? prev : [...prev, data];
          });
        } catch (e) {
          console.error("Eroare parsare mesaj:", e);
          setLog(prev => [...prev, {
            sender: "System",
            content: event.data,
            timestamp: new Date().toISOString()
          }]);
        }
      };
    };

    connectWebSocket();
    startPolling();

    // Cleanup la demontare
    return () => {
      if (socketRef.current) socketRef.current.close();
      if (pollingIntervalRef.current) clearInterval(pollingIntervalRef.current);
    };
  }, []);

  // Scroll automat la ultimul mesaj
  useEffect(() => {
    scrollToBottom();
  }, [log]);

  const scrollToBottom = () => {
    messagesEndRef.current?.scrollIntoView({ behavior: "smooth" });
  };

  // Trimite mesajul prin WS sau fallback prin REST
  const sendMessage = () => {
    if (message.trim() === "") return;

    const full = `${username}: ${message}`;

    if (socketRef.current && socketRef.current.readyState === WebSocket.OPEN) {
      socketRef.current.send(full);
    } else {
      console.log("WebSocket nu este conectat. Trimitere prin API...");
      const parts = full.split(":", 2);
      fetch("/api/messages", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          sender: parts[0].trim(),
          content: parts[1].trim(),
          timestamp: new Date().toISOString()
        })
      }).catch(err => console.error("Eroare trimitere mesaj:", err));
    }

    setMessage("");
  };

  const handleKeyPress = (e) => {
    if (e.key === 'Enter') sendMessage();
  };

  const formatTime = (timestamp) => {
    if (!timestamp) return '';
    const date = new Date(timestamp);
    return isNaN(date) ? 'Data invalidă' : date.toLocaleString();
  };

  return (
    <div className="chat-container">
      <div className="chat-header">
        <h2>Chat Live</h2>
        <div className={`connection-status ${connected ? 'connected' : 'disconnected'}`}>
          {connected ? 'Conectat' : 'Deconectat'}
        </div>
      </div>

      <div className="user-settings">
        <div className="input-group">
          <label>Nume utilizator:</label>
          <input 
            className="username-input" 
            value={username} 
            onChange={e => setUsername(e.target.value)} 
            placeholder="Introduceți numele dvs."
          />
        </div>
      </div>

      <div className="messages-container">
        <div className="messages-list">
          {log.map((msg, i) => {
            const content = typeof msg === 'string' ? msg.split(': ').slice(1).join(': ') : msg.content;
            const sender = typeof msg === 'string' ? msg.split(':')[0] : msg.sender;
            
            return (
              <div 
                key={i} 
                className="message stream-style"
              >
                <span className="sender-stream">{sender}:</span>
                <span className="content-stream">{content}</span>
                {msg.timestamp && (
                  <span className="timestamp-stream">{formatTime(msg.timestamp)}</span>
                )}
              </div>
            );
          })}
          <div ref={messagesEndRef} />
        </div>
      </div>

      <div className="message-input-container">
        <input 
          className="message-input" 
          value={message} 
          onChange={e => setMessage(e.target.value)} 
          onKeyPress={handleKeyPress}
          placeholder="Scrieți un mesaj..."
        />
        <button 
          className="send-button" 
          onClick={sendMessage}
        >
          Trimite
        </button>
      </div>
    </div>
  );
}

export default App;
