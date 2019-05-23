package com.wl.user.controller;
/**
 * 名称:UserController(控制器)
 * 功能:接收jsp传来的参数进行操作,再将处理的结果返回给jsp,便于用户观察
 */

import com.wl.user.model.User;
import com.wl.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/toUserList")
    public String toUserList(Model model) {
        List<User> list = userService.findAllUsers();
        model.addAttribute("userlist", list);
        return "jsp/user/userlist";
    }

    @RequestMapping("/toUserAdd")
    public String toUserAdd(Model model) {
        return "jsp/user/register";
    }

    @RequestMapping("/userAdd")
    public String userAdd(User user, Model model) {
        if (user.getUser_name() != null && !"".equals(user.getUser_name())) {
            userService.addUser(user);
        } else {
            return "jsp/user/fail";
        }
        return "jsp/user/success";
    }

    @RequestMapping("/toUserDel")
    public String deleteUser(@RequestParam(value = "user_id", required = true) Integer id, Model model) {
        if (userService.deleteUser(id)) {
            return "jsp/user/success";
        } else {
            return "jsp/user/delete";
        }
    }

    @RequestMapping("/toUserEdit")
    public String toBookEdit(@RequestParam(value = "user_id", required = true) Integer id, Model model) {
        model.addAttribute(userService.findUserById(id));
        return "jsp/user/modify";
    }

    @RequestMapping("/userEdit")
    public String bookEdit(User user, Model model) {
        if (user.getUser_name() != null && !"".equals(user.getUser_name())) {
            userService.updataUser(user);
        } else {
            return "jsp/user/fail";
        }
        return "jsp/user/success";

    }

    @RequestMapping("/toUserQuery")
    public String toUerQuer(Model model) {
        return "jsp/user/query";

    }

    @RequestMapping("/userQuery")
    public String userQuery(@RequestParam(value = "user_id", required = true) Integer id, Model model) {
        model.addAttribute(userService.findUserById(id));
        return "jsp/user/query_show";
    }

}


