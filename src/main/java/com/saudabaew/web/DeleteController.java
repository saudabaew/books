package com.saudabaew.web;

import com.saudabaew.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 1 on 26.01.2018.
 */
@Controller
@RequestMapping("/delete")
public class DeleteController {
    private BookRepository bookRepository;

    @Autowired
    public DeleteController(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @RequestMapping("/{id}")
    public String delete(@PathVariable(value = "id") int id){
        bookRepository.delete(id);
        return "redirect:/";
    }
}
