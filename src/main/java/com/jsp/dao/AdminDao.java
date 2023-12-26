package com.jsp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.jsp.entities.Admin;
import com.jsp.repository.AdminRepository;

public class AdminDao implements AdminRepository {
	@Override
	public Admin saveAdmin(Admin admin) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(admin);
		et.commit();
		emf.close();
		return admin;
	}

	@Override
	public Admin getAdminById(String id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Admin admin = em.find(Admin.class, id);
		et.commit();

		emf.close();
		return admin;
	}

	@Override
	public List<Admin> getAdminByEmail(String email) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select a from Admin a where a.email=?1";

		Query q = em.createQuery(sql);
		q.setParameter(1, email);
		List<Admin> admin = q.getResultList();
		emf.close();
		return admin;
	}

	@Override
	public List<Admin> getAllAdmin() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select a from Admin a";
		Query q = em.createQuery(sql);
		List<Admin> adminList = q.getResultList();
		emf.close();
		return adminList;
	}

	@Override
	public void deleteAdminById(String id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Admin admin = em.find(Admin.class, id);
		em.remove(admin);
		et.commit();
		emf.close();
	}

	
	
	
	@Override
	public Admin updateAdmin(Admin admin) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Admin ad = em.merge(admin);
		et.commit();
		emf.close();
		return ad;
	}

	@Override
	public Admin loginAdmin(String email, String password) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		Query query =  em.createQuery("select a from Admin a where a.email=?1 and a.password=?2") ;
		query.setParameter(1, email) ;
		query.setParameter(2, password) ;
		return (Admin)query.getSingleResult() ;
	}

}
