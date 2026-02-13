package com.product.repository;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class LoginRepositry 
{
	Map<String, String> map = new HashMap<String, String>();
	public LoginRepositry()
	{
		map.put("user123", "user");
	}

	public boolean checkUser(String user)
	{
		return map.containsKey(user);
	}

	public String checkPassword(String user) 
	{
		return map.get(user);
	}
	
}
