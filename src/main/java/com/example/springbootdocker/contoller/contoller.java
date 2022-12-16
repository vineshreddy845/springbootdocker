package com.example.springbootdocker.contoller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/name")
public class contoller {

    @GetMapping("/hello")
    public String em(@RequestBody Employee emp){

        String name1= emp.getName();
        return name1;
    }
}
