package std.tema.heasca.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import std.tema.heasca.model.Message;
import std.tema.heasca.repository.MessageRepository;
import std.tema.heasca.websocket.ChatSocketHandler;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.context.ApplicationContext;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class MessageService {

    private final MessageRepository messageRepository;
    private final ObjectMapper objectMapper;
    private final ApplicationContext applicationContext;
    private LocalDateTime lastFetchTimestamp = LocalDateTime.now().minusMinutes(5);

    @Autowired
    public MessageService(MessageRepository messageRepository, ObjectMapper objectMapper, 
                         ApplicationContext applicationContext) {
        this.messageRepository = messageRepository;
        this.objectMapper = objectMapper;
        this.applicationContext = applicationContext;
    }

    @Scheduled(fixedDelay = 500) // Verifică mesaje noi la fiecare 500ms
    public void fetchAndBroadcastNewMessages() {
        ChatSocketHandler chatSocketHandler = applicationContext.getBean(ChatSocketHandler.class);
        
        List<Message> newMessages = messageRepository.findByTimestampAfter(lastFetchTimestamp);
        
        if (!newMessages.isEmpty()) {
            for (Message message : newMessages) {
                try {
                    String json = objectMapper.writeValueAsString(message);
                    chatSocketHandler.broadcastMessage(json);
                    // Actualizează timestamp-ul doar când găsim mesaje noi
                    if (message.getTimestamp().isAfter(lastFetchTimestamp)) {
                        lastFetchTimestamp = message.getTimestamp();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
} 