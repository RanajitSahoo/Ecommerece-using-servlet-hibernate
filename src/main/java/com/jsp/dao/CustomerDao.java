package com.jsp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.jsp.entities.Customer;
import com.jsp.repository.CustomerRepository;

public class CustomerDao implements CustomerRepository {

	@Override
	public Customer saveCustomer(Customer customer) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(customer);
		et.commit();
		emf.close();
		return customer;
	}

	@Override
	public Customer getCustomerById(int id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Customer customer = em.find(Customer.class, id);
		return customer;
	}

	@Override
	public List<Customer> getCustomerByName(String name) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select c from Customer c where c.name=?1";
		Query q = em.createQuery(sql);
		q.setParameter(1, name);
		List<Customer> list = q.getResultList();
		emf.close();
		return list;
	}

	@Override
	public List<Customer> getCustomerByEmail(String email) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select c from Customer c where c.email=?1";
		Query q = em.createQuery(sql);
		q.setParameter(1, email);
		List<Customer> list = q.getResultList();
		emf.close();
		return list;
	}

	@Override
	public List<Customer> getCustomerByMobileNumber(String mobileNumber) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select c from Customer c where c.mobileNumber=?1";
		Query q = em.createQuery(sql);
		q.setParameter(1, mobileNumber);
		List<Customer> list = q.getResultList();
		emf.close();
		return list;
	}

	@Override
	public List<Customer> getCustomerByStatus(String status) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select c from Customer c where c.status=?1";
		Query q = em.createQuery(sql);
		q.setParameter(1, status);
		List<Customer> list = q.getResultList();
		emf.close();
		return list;
	}

	@Override
	public List<Customer> getAllCustomers() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select c from Customer c";
		Query q = em.createQuery(sql);
		List<Customer> list = q.getResultList();
		emf.close();
		return list;
	}

	@Override
	public void deleteCustomerById(int id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Customer c = em.find(Customer.class, id);
		em.remove(c);
		et.commit();
		emf.close();

	}

	@Override
	public Customer updateCustomer(Customer customer) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Customer c = em.merge(customer);
		et.commit();
		emf.close();
		return c;
	}

}
