package com.example.firebase.springbootfirebasedemo.controller;


import com.example.firebase.springbootfirebasedemo.User.UserService;
import com.example.firebase.springbootfirebasedemo.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.concurrent.ExecutionException;

@RestController
@RequestMapping("/api")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/bdcUsers")
    public String saveUser(@RequestBody User user) throws InterruptedException, ExecutionException {

        return userService.saveUser(user);

    }

    @PostMapping("/bdcUsers/{name}")
    public String getUser(@PathVariable User name) throws InterruptedException, ExecutionException {

        return userService.saveUser(name);

    }



}
