package com.product.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.repository.LoginRepositry;

@Service
public class LoginService 
{
	@Autowired
	private LoginRepositry loginRepository;

	public boolean isUserExist(String user) 
	{
		return loginRepository.checkUser(user);
	}

	public boolean isPasswordCorrect(String user, String pass)
	{
		String dbPass = loginRepository.checkPassword(user);
		return dbPass.equals(pass);
	}

	
}
