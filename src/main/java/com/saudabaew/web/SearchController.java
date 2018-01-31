package com.saudabaew.web;

import com.saudabaew.entities.Book;
import com.saudabaew.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by 1 on 31.01.2018.
 */
@Controller
@RequestMapping("/")
public class SearchController {
    private BookRepository bookRepository;

    @Autowired
    public SearchController(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @RequestMapping(method = RequestMethod.POST)
    public String search(@RequestParam String title, Model model)
    {
        model.addAttribute("listBooks", bookRepository.findAll());
        model.addAttribute("search", title.toLowerCase());
        return "search";
    }
}
