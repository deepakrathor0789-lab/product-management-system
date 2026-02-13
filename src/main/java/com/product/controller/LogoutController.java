package com.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LogoutController
{
	@GetMapping("logout")
	public String logoutUser()
	{
		return "login-form";
	}
}
