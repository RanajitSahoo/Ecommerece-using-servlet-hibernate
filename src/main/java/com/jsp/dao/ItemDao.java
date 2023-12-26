package com.jsp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.jsp.entities.Cart;
import com.jsp.entities.Item;
import com.jsp.repository.ItemRepository;

public class ItemDao implements ItemRepository{

	@Override
	public Item saveItem(Item item) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(item);
		et.commit();
		emf.close();
		return item;
	}

	@Override
	public Item getItemById(int id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Item item = em.find(Item.class, id);
		et.commit();
		emf.close();
		return item;
	}

	@Override
	public List<Item> getItemByName(String name) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql="select i from Item i where i.name=?1";
		Query q = em.createQuery(sql);
		q.setParameter(1, name);
		List<Item> list= q.getResultList();
		emf.close();
		return list;
	}

	@Override
	public void deleteItemById(int id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Item item = em.find(Item.class, id);
		em.remove(item);
		et.commit();
		emf.close();
		
	}

	@Override
	public Item updateItemById(Item item) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Item i = em.merge(item);
		et.commit();
		emf.close();
		return i;
	}

	@Override
	public List<Item> getItemsByCart(Cart cart) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql="select i from Item i where i.cart=?1";
		Query q = em.createQuery(sql);
		q.setParameter(1, cart);
		List<Item> list= q.getResultList();
		emf.close();
		return list;
	}
	
	

}
