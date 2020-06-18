package com.xl.download.controller;

import com.xl.download.bean.User;
import com.xl.download.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class UserController {
    @Autowired
    UserMapper userMapper;
    @RequestMapping(value="/login")
    public String Login(){
        System.out.println("进入login....");
        return "login";
    }
    @RequestMapping(value="/userlogin")
    public String downloadLogin(Model model, HttpServletRequest request, User user, Map map, HttpSession session){
              String name=user.getName();
              String  password=user.getPassword();
              if((userMapper.loginuser(name,password))!=null){
                  session.setAttribute("loginUser",name);
                 return "redirect:/upload";
        }else{
                  //model.addAttribute();
                  map.put("msg","用户名或密码错误");
                  return "redirect:/login";
              }
    }
}
