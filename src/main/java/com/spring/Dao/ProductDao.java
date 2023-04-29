package com.spring.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.model.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	// create
	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);

	}

	// getallProducts

	public List<Product> getallProducts() {

		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}

	// delete single data

	@Transactional
	public void deleteProduct(int pid) {
		Product p = this.hibernateTemplate.load(Product.class, pid);

		this.hibernateTemplate.delete(p);
	}
	
	
	//get the single product details
	
	public Product getsingleProduct(int pid)
	{
	Product p=this.hibernateTemplate.get(Product.class,pid);
	return p;
	
	}
	
	
	
	

}
