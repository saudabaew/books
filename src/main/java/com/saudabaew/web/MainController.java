package com.saudabaew.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by 1 on 19.01.2018.
 */
@Controller
@RequestMapping("/")
public class MainController {

    @RequestMapping(method = RequestMethod.GET)
    public String main(){
        System.out.println("inside controller");
        return "mainPage";
    }

    @RequestMapping(value = "about", method = RequestMethod.GET)
    public String about() {
        System.out.println("inside about");
        return "about";
    }
}
