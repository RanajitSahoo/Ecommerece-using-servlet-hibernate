package com.jsp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.jsp.entities.Merchant;
import com.jsp.entities.Product;
import com.jsp.repository.ProductRepository;

public class ProductDao implements ProductRepository{
	@Override
	public Product saveProduct(Product product) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(product);
		et.commit();
		emf.close();
		return product;
	}
	@Override
	public Product getProductById(int id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Product product = em.find(Product.class, id);
		et.commit();
		emf.close();
		return product;
	}
	@Override
	public List<Product> getProductByName(String name) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select p from Product p where p.name=?1";
		
		Query q = em.createQuery(sql);
		q.setParameter(1, name) ;
		List<Product> products = q.getResultList() ;
		emf.close();
		return products;
	}
	@Override
	public List<Product> getProductByCategory(String category) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select p from Product p where p.category=?1";
		
		Query q = em.createQuery(sql);
		q.setParameter(1, category) ;
		List<Product> products = q.getResultList() ;
		emf.close();
		return products;
	}
	
	@Override
	public List<Product> getAllProduct() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select p from Product p";
		Query q = em.createQuery(sql);
		List<Product> products = q.getResultList();
		emf.close();
		return products;
	}
	@Override
	public void deleteProductById(int id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Product product = em.find(Product.class, id);
		em.remove(product);
		et.commit();
		emf.close();

	}
	@Override
	public Product updateProduct(Product product) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Product pd = em.merge(product);
		et.commit();
		emf.close();
		return pd;
	}
	@Override
	public List<Product> getAllProductByMerchant(Merchant m) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select p from Product p where p.merchant=?1";
		
		Query q = em.createQuery(sql);
		q.setParameter(1, m) ;
		List<Product> products = q.getResultList() ;
		
		return products;
	}

	


}
