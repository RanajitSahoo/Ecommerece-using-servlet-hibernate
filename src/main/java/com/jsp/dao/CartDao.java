package com.jsp.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.jsp.entities.Cart;
import com.jsp.repository.CartRepository;

public class CartDao implements CartRepository{

	@Override
	public Cart saveCart(Cart cart) {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.persist(cart);
		et.commit();
		emf.close();
		return cart;
	}

	@Override
	public Cart getCart(int id) {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		Cart cart = em.find(Cart.class, id);
		et.commit();
		emf.close();
		return cart;
		
	}

	@Override
	public void deleteCart(int id) {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		Cart cart = em.find(Cart.class, id);
		em.remove(cart);
		et.commit();
		emf.close();
	}

	@Override
	public Cart updateCart(Cart cart) {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.merge(cart);
		et.commit();
		emf.close();
		return cart;
	}

}
