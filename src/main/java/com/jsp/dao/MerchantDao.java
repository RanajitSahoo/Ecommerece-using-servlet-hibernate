package com.jsp.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.jsp.entities.Merchant;
import com.jsp.repository.MerchantRepository;

public class MerchantDao implements MerchantRepository {

	@Override
	public Merchant saveMerchant(Merchant merchant) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(merchant);
		et.commit();
		emf.close();
		return merchant;
	}

	@Override
	public Merchant getMerchantById(int id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Merchant merchant = em.find(Merchant.class, id);
		et.commit();
		emf.close();
		return merchant;
	}

	@Override
	public List<Merchant> getMerchantsByName(String name) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select m from Merchant m where m.name=?1";
		Query q = em.createQuery(sql);
		q.setParameter(1, name);
		List<Merchant> merchants = q.getResultList();
		emf.close();
		return merchants;
	}

	@Override
	public List<Merchant> getMerchantsBySearch(String search) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select m from Merchant m where m.name=?1";
		Query q = em.createQuery(sql);
		q.setParameter(1, search);
		List<Merchant> merchants = q.getResultList();
		emf.close();
		return merchants;
	}

	@Override
	public List<Merchant> getMerchantsByEmail(String email) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select m from Merchant m where m.email=?1";
		Query q = em.createQuery(sql);
		q.setParameter(1, email);
//		Merchant merchant=(Merchant)q.getSingleResult();
		List<Merchant> merchants = q.getResultList();
		emf.close();
		return merchants;
	}

	@Override
	public List<Merchant> getMerchantsByMobileNumber(long mobileNumber) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select m from Merchant m where m.mobileNumber=?1";
		Query q = em.createQuery(sql);

		q.setParameter(1, mobileNumber);

		List<Merchant> merchants = q.getResultList();
		emf.close();
		return merchants;
	}

	@Override
	public List<Merchant> getMerchantByStatus(String status) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select m from Merchant m where m.status=?1";
		Query q = em.createQuery(sql);
		q.setParameter(1, status);
		List<Merchant> merchants = q.getResultList();
		emf.close();
		return merchants;
	}

	@Override
	public List<Merchant> getAllMerchants() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		String sql = "select m from Merchant m";
		Query q = em.createQuery(sql);
		List<Merchant> merchants = q.getResultList();
		emf.close();
		return merchants;
	}

	@Override
	public void deleteMerchantById(String id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Merchant merchant = em.find(Merchant.class, id);
		em.remove(merchant);

		et.commit();
		emf.close();

	}

	@Override
	public Merchant updateAdmin(Merchant merchant) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Merchant merchants = em.merge(merchant);
		et.commit();
		emf.close();
		return merchants;
	}

	@Override
	public List<Merchant> search(List<Merchant> list, String msg) {
		List<Merchant> merchant = new ArrayList<Merchant>();
		Iterator<Merchant> itr = list.iterator();
		while (itr.hasNext()) {
			Merchant m = itr.next();
			boolean contains = m.getName().contains(msg);

			if (contains)
				merchant.add(m);
		}
		return merchant;
	}

}
