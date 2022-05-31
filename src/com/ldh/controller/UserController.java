package com.ldh.controller;


import com.ldh.bean.User;
import com.ldh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public String login(User user, HttpServletRequest httpServletRequest,HttpSession httpSession) {

        if (userService.judge(user)) {
            httpServletRequest.getSession().setAttribute("user", user);
            return "redirect:/message/selectAll";
        } else {
            httpSession.setAttribute("TF",false);
            return "redirect:/index.jsp";

        }

    }

    @RequestMapping("/registered")
    public String registered(User user,HttpSession httpSession) {
        if (!userService.judge(user)) {
            userService.insertUser(user);
            return "redirect:/index.jsp";

        } else {
            httpSession.setAttribute("TF",false);
            return "registered";
        }
    }

}
