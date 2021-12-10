package com.ljsy.controller;

import com.ljsy.entity.Emp;
import com.ljsy.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("emp")
public class EmpController {

    @Autowired
    EmpService empService;

    @GetMapping("add")
    public String addEmp(){
        return "pages/addEmp";
    }

    @PostMapping("add")
    public String save(Emp emp){
        empService.save(emp);
        return "redirect:/user/list";
    }

    @GetMapping("update")
    public String update(int id, Model model){
        Emp emp = empService.findById(id);
        model.addAttribute("emp",emp);
        return "pages/updateEmp";
    }

    @PostMapping("update")
    public String updateEmp(Emp emp){
        System.out.println(emp);
        empService.update(emp);
        return "redirect:/user/list";
    }

    @GetMapping("delete")
    public String delete(int id){
        empService.delete(id);
        return "redirect:/user/list";
    }
}
