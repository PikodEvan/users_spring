package com.evan.iusers.controllers;

/*import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;*/

import com.evan.iusers.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @Autowired
    private UserService userService;

    @GetMapping({"/", "/index"})
    //@ResponseBody
    String index() {
        return "index";
    }

}
