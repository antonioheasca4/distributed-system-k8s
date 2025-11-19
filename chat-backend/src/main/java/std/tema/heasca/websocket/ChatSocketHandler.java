package std.tema.heasca.websocket;

import org.springframework.web.socket.*;
import org.springframework.web.socket.handler.TextWebSocketHandler;
import std.tema.heasca.model.Message;
import std.tema.heasca.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.io.IOException;
import java.time.LocalDateTime;
import org.springframework.context.ApplicationContext;

public class ChatSocketHandler extends TextWebSocketHandler {

    private static final Set<WebSocketSession> sessions = new CopyOnWriteArraySet<>();

    @Autowired
    private MessageRepository repository;
    
    @Autowired
    private ApplicationContext applicationContext;

    @Override
    public void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        String msg = message.getPayload();
        String[] parts = msg.split(":", 2);
        if (parts.length == 2) {
            Message m = new Message();
            m.setSender(parts[0].trim());
            m.setContent(parts[1].trim());
            m.setTimestamp(LocalDateTime.now());
            repository.save(m);

            ObjectMapper objectMapper = applicationContext.getBean(ObjectMapper.class);
            String json = objectMapper.writeValueAsString(m);
            broadcastMessage(json);
        }
    }

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        sessions.add(session);
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        sessions.remove(session);
    }

    public void broadcastMessage(String message) {
        for (WebSocketSession session : sessions) {
            try {
                if (session.isOpen()) {
                    session.sendMessage(new TextMessage(message));
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
