package com.product.service;

import java.util.List;

import com.product.entity.Product;


public interface ProductService
{

	void saveProduct(Product product);

	List<Product> showProduct();

	Product findProduct(long pid);

	void deleteSuccess(int pid);

	void updateRecord(Product productNew);

	

	

	
}
