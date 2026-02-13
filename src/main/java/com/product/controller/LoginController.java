package com.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.product.service.LoginService;

@Controller
public class LoginController 
{
	@Autowired
	private LoginService loginService;
	@GetMapping
	public String getLoginForm()
	{
		return "login-form";
	}
	@PostMapping("/authenticate-user")
	public String authenticateUser(String user, String pass, Model model)
	{
		if(!loginService.isUserExist(user))
		{
			model.addAttribute("msg", "Username does not exist!!!");
			model.addAttribute("username", user);
			return "login-form";
		}
		if(!loginService.isPasswordCorrect(user, pass))
		{
			model.addAttribute("msg", "Entered your password is incorrect!!!");
			model.addAttribute("username", user);
			return "login-form";
		}
		return "home";
	}
}
