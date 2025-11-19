package std.tema.heasca.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.*;
import std.tema.heasca.websocket.ChatSocketHandler;
import org.springframework.context.annotation.Bean;

@Configuration
@EnableWebSocket
public class WebSocketConfig implements WebSocketConfigurer {
    
    @Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
        registry.addHandler(chatSocketHandler(), "/chat").setAllowedOrigins("*");
    }
    
    @Bean
    public ChatSocketHandler chatSocketHandler() {
        return new ChatSocketHandler();
    }
}
