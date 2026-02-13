package com.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.product.entity.Product;
import com.product.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService
{
	@Autowired
	private ProductRepository productRepository;

	@Override
	public void saveProduct(Product product) 
	{
		productRepository.insertRecord(product);
	}


	public List<Product> showProduct()
	{
		return productRepository.getProduct();
	}


	@Override
	public Product findProduct(long pid) 
	{
		return productRepository.findId(pid);
	}


	@Override
	public void deleteSuccess(int pid) 
	{
		Product product = productRepository.findId(pid);
		productRepository.deleteSuccess(product);
	}


	@Override
	public void updateRecord(Product productNew) 
	{
		
		Product productOld = productRepository.findId(productNew.getPid());
		productRepository.updatData(productOld, productNew);
	}




	

	
}
