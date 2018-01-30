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

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView listUsers(@RequestParam(required = false) Integer page) {
        ModelAndView modelAndView = new ModelAndView("books");

        List<Book> books = bookRepository.findAll();
        PagedListHolder<Book> pagedListHolder = new PagedListHolder<Book>(books);
        pagedListHolder.setPageSize(10);
        modelAndView.addObject("maxPages", pagedListHolder.getPageCount());

        if(page==null || page < 1 || page > pagedListHolder.getPageCount())
            page=1;

        modelAndView.addObject("page", page);

        if(page == null || page < 1 || page > pagedListHolder.getPageCount()){
            pagedListHolder.setPage(0);
            modelAndView.addObject("listBooks", pagedListHolder.getPageList());
        }
        else if(page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page-1);
            modelAndView.addObject("listBooks", pagedListHolder.getPageList());
        }

        modelAndView.addObject("book", new Book());

        return modelAndView;
    }
}
