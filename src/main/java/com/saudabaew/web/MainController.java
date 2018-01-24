package com.saudabaew.web;

import com.saudabaew.entities.Book;
import com.saudabaew.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by 1 on 19.01.2018.
 */
@Service
@Controller
@RequestMapping("/")
public class MainController {

    private BookRepository bookRepository;

    @Autowired
    public MainController(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String main(Model model){
        System.out.println("inside controller");
        List<Book> books = bookRepository.findAll();
        model.addAttribute(books);
        return "mainPage";
    }

    @RequestMapping(value = "about", method = RequestMethod.GET)
    public String about(Model model) {
        System.out.println("inside about");
        Book book = bookRepository.getOne(1);
        model.addAttribute(book);
        return "about";
    }
}
