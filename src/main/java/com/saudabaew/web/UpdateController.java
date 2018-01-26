package com.saudabaew.web;

import com.saudabaew.entities.Book;
import com.saudabaew.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by 1 on 26.01.2018.
 */
@Controller
@RequestMapping("/update")
public class UpdateController {
    private BookRepository bookRepository;

    @Autowired
    public UpdateController(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String update(@PathVariable(value = "id") int id, Model model)
    {
        Book book = bookRepository.findOne(id);
        model.addAttribute(book);
        return "update";
    }
}
