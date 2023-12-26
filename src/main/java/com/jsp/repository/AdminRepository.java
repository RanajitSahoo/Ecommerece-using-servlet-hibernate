package com.jsp.repository;

import java.util.List;

import com.jsp.entities.Admin;

public interface AdminRepository {
	 Admin saveAdmin(Admin admin);
	 Admin getAdminById(String id);
	 List<Admin> getAdminByEmail(String email);
	 List<Admin> getAllAdmin();
	 void deleteAdminById(String id);
	 Admin updateAdmin(Admin admin);
	 Admin loginAdmin(String email,String password) ;
}
