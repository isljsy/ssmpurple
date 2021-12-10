package com.ljsy.controller;

import com.ljsy.entity.User;
import com.ljsy.service.EmpService;
import com.ljsy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private EmpService empService;


    @PostMapping("login")
    public String login(String name, String password, Model model){
        System.out.println(name + " - " + password);
        User user = userService.login(name,password);
        if(user==null){
            model.addAttribute("msg","用户名或密码错误");
            return "redirect:/";
        }
        return "redirect:list";
    }

    @GetMapping("list")
    public String empList(Model model){
        model.addAttribute("empList",empService.findAll());
        return "pages/emplist";
    }
}
