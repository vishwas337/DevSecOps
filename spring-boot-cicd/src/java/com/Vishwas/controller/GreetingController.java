package java.com.Vishwas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

public class GreetingController {
    @GetMapping("/")
    public String greeting(Model model) {
        model.addAttribute("message", "Hello from Spring Boot & CI/CD!");
        return "index";
    
}
