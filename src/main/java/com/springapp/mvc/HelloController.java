package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
//@RequestMapping("/")
public class HelloController {
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Hello world!");
		return "hello";
	}

    @RequestMapping(value="/result.html",method = RequestMethod.POST)
    public String a(ModelMap model, @RequestParam("name") String name, @RequestParam("age") int age) {
        model.addAttribute("name", name);
        model.addAttribute("age", age);
        return "result";
    }
}