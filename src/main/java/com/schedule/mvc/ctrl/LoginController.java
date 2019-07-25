package com.schedule.mvc.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Locale;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

    @RequestMapping(value = "/")
    public String login(Locale locale, Model model) {
        return "login/login";
    }
}
