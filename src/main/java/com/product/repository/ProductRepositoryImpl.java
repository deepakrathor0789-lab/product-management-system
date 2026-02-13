package com.product.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.product.entity.Product;



@Repository
public class ProductRepositoryImpl implements ProductRepository
{
	private Session session;
	private Transaction transaction;
	@Autowired
	public ProductRepositoryImpl(SessionFactory factory)
	{
		session = factory.openSession();
		transaction= session.getTransaction();
	}
	
	public void insertRecord(Product product) 
	{
		transaction.begin();
		session.save(product);
		transaction.commit();
		
	}

	@Override
	public List<Product> getProduct() 
	{
		Query<Product> query = session.createQuery("from Product", Product.class);
		return query.list();
		
	}

	@Override
	public Product findId(long pid) 
	{
		Product product = session.get(Product.class, pid);
		return product;
	}

	@Override
	public void deleteSuccess(Product product) 
	{
		transaction.begin();
		session.remove(product);
		transaction.commit();
	}

	@Override
	public void updatData(Product productOld, Product productNew) 
	{
		transaction.begin();
		productOld.setName(productNew.getName());
		productOld.setbrand(productNew.getbrand());
		productOld.setprice(productNew.getprice());
		transaction.commit();
	}

	
	
}
