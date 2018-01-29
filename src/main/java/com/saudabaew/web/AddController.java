package com.saudabaew.web;

import com.saudabaew.entities.Book;
import com.saudabaew.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by 1 on 25.01.2018.
 */
@Controller
@RequestMapping("/add")
public class AddController {
    private BookRepository bookRepository;

    @Autowired
    public AddController(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String add()
    {
        return "add";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String add(@RequestParam String title, @RequestParam String description, @RequestParam String author, @RequestParam String isbn, @RequestParam int printYear){
        Book book = new Book();
        book.setTitle(title);
        book.setDescription(description);
        book.setAuthor(author);
        book.setIsbn(isbn);
        book.setPrintYear(printYear);
        bookRepository.saveAndFlush(book);
        return "redirect:/";
    }
}

