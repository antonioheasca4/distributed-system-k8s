package std.tema.heasca.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import std.tema.heasca.model.Message;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface MessageRepository extends MongoRepository<Message, String> {
    Page<Message> findAll(Pageable pageable);
    List<Message> findByTimestampAfter(LocalDateTime timestamp);
}
