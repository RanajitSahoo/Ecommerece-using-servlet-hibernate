package com.jsp.repository;

import java.util.List;

import com.jsp.entities.Merchant;

public interface MerchantRepository {
	Merchant saveMerchant(Merchant merchant);
	Merchant getMerchantById(int id);
	List<Merchant> getMerchantsByName(String name);
	List<Merchant> getMerchantsBySearch(String search);
	List<Merchant> getMerchantsByEmail(String email);
	List<Merchant> getMerchantsByMobileNumber(long mobileNumber);
	List<Merchant> getMerchantByStatus(String status);
	List<Merchant> getAllMerchants();
	void deleteMerchantById(String id);
	Merchant updateAdmin(Merchant merchant);
	List<Merchant> search(List<Merchant> list,String msg);
}
