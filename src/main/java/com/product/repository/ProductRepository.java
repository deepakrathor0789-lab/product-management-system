package com.product.repository;

import java.util.List;

import com.product.entity.Product;

public interface ProductRepository 
{

	void insertRecord(Product product);

	List<Product> getProduct();

	Product findId(long pid);

	void deleteSuccess(Product product);

	void updatData(Product productOld, Product productNew);

	

	
}
