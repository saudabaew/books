package com.saudabaew.repository;

import com.saudabaew.entities.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by 1 on 20.01.2018.
 */
@Repository
public interface BookRepository extends JpaRepository<Book, Long> {
}
