package com.product.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Product 
{
	@Id
	private long pid;
	@Column(length = 30, nullable = false)
	private String name;
	@Column(length = 30, nullable = false)
	private String brand;
	@Column(nullable = false)
	private int price;

	public long getPid() 
	{
		return pid;
	}

	public void setPid(long pid) 
	{
		this.pid = pid;
	}

	public String getName() 
	{
		return name;
	}

	public void setName(String name) 
	{
		this.name = name;
	}

	public String getbrand()
	{
		return brand;
	}

	public void setbrand(String brand) 
	{
		this.brand = brand;
	}
	public int getprice()
	{
		return price;
	}

	public void setprice(int price) 
	{
		this.price = price;
	}
	

}
