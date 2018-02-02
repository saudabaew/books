package com.saudabaew.web;

import com.saudabaew.entities.Book;
import com.saudabaew.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 1 on 19.01.2018.
 */
@Controller
@RequestMapping("/")
public class MainController {

    private BookRepository bookRepository;

    @Autowired
    public MainController(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @RequestMapping
    public String listBooks(@RequestParam(required = false) Integer page, Model model) {

        List<Book> books = bookRepository.findAll();
        PagedListHolder<Book> pagedListHolder = new PagedListHolder<Book>(books);
        pagedListHolder.setPageSize(10);
        model.addAttribute("maxPages", pagedListHolder.getPageCount());

        if(page==null || page < 1 || page > pagedListHolder.getPageCount())
            page=1;

        model.addAttribute("page", page);

        if(page == null || page < 1 || page > pagedListHolder.getPageCount()){
            pagedListHolder.setPage(0);
            model.addAttribute("listBooks", pagedListHolder.getPageList());
        }
        else if(page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page-1);
            model.addAttribute("listBooks", pagedListHolder.getPageList());
        }
        return "books";
    }

    @RequestMapping(value = "/books")
    public String booksFilter(@RequestParam(required = false) Integer page, @RequestParam String read, Model model)
    {
        List<Book> books = bookRepository.findAll();
        List<Book> filterBooks = new ArrayList<>();
        for (Book b : books
                ) {
            if (read.equals("true")) {
                if (b.getReadAlready()) filterBooks.add(b);
            } else if (read.equals("false")){
                if (!b.getReadAlready()) filterBooks.add(b);
            }
            else if (read.equals("all"))
            {
                filterBooks.addAll(books);
                break;
            }
        }

        PagedListHolder<Book> pagedListHolder = new PagedListHolder<Book>(filterBooks);
        pagedListHolder.setPageSize(10);
        model.addAttribute("maxPages", pagedListHolder.getPageCount());

        if(page==null || page < 1 || page > pagedListHolder.getPageCount())
            page=1;

        model.addAttribute("page", page);

        if(page == null || page < 1 || page > pagedListHolder.getPageCount()){
            pagedListHolder.setPage(0);
            model.addAttribute("listBooks", pagedListHolder.getPageList());
        }
        else if(page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page-1);
            model.addAttribute("listBooks", pagedListHolder.getPageList());
        }
        return "books";
    }
}
