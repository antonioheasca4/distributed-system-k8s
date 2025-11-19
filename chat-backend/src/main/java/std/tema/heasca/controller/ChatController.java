package std.tema.heasca.controller;

import org.springframework.web.bind.annotation.*;
import std.tema.heasca.model.Message;
import std.tema.heasca.repository.MessageRepository;
import std.tema.heasca.websocket.ChatSocketHandler;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.context.ApplicationContext;
import org.springframework.beans.factory.annotation.Autowired;

import java.time.LocalDateTime;
import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class ChatController {

    private final MessageRepository repo;
    private final ObjectMapper objectMapper;
    private final ApplicationContext applicationContext;

    @Autowired
    public ChatController(MessageRepository repo, ObjectMapper objectMapper, 
                         ApplicationContext applicationContext) {
        this.repo = repo;
        this.objectMapper = objectMapper;
        this.applicationContext = applicationContext;
    }

    @GetMapping("/messages")
    public List<Message> getMessages(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        Pageable pageable = PageRequest.of(page, size, Sort.by("timestamp").ascending());
        return repo.findAll(pageable).getContent();
    }

    @GetMapping("/messages/latest")
    public List<Message> getLatestMessages(@RequestParam("since") String sinceIso) {
        LocalDateTime since = LocalDateTime.parse(sinceIso);
        return repo.findByTimestampAfter(since);
    }
    
    @PostMapping("/messages")
    public Message createMessage(@RequestBody Message message) throws Exception {
        // Asigură-te că timestamp-ul este setat dacă nu a fost furnizat
        if (message.getTimestamp() == null) {
            message.setTimestamp(LocalDateTime.now());
        }
        
        // Salvează mesajul
        Message savedMessage = repo.save(message);
        
        // Transmite mesajul la toți clienții conectați prin WebSocket
        ChatSocketHandler chatSocketHandler = applicationContext.getBean(ChatSocketHandler.class);
        
        String json = objectMapper.writeValueAsString(savedMessage);
        chatSocketHandler.broadcastMessage(json);
        
        return savedMessage;
    }
}
