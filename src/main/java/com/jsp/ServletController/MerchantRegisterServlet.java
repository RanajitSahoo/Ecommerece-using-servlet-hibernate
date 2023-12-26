package com.jsp.ServletController;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dao.AdminDao;
import com.jsp.dao.MerchantDao;
import com.jsp.dao.ProductDao;
import com.jsp.entities.Admin;
import com.jsp.entities.Merchant;
import com.jsp.entities.Product;
import com.jsp.repository.AdminRepository;
import com.jsp.repository.MerchantRepository;

@WebServlet("/Pages/Merchant/registerMerchant")
public class MerchantRegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String mobileNumber = req.getParameter("mobileNumber");
		long mob = Long.parseLong(mobileNumber);
		String password = req.getParameter("password");
		
		Merchant merchant = new Merchant();
		MerchantRepository merchantDao = new MerchantDao();
		
		List<Merchant> allMerchants = merchantDao.getAllMerchants();
		Iterator<Merchant> listOfMerchant = allMerchants.iterator();
		boolean eflag=true,eMob=true;
		while(listOfMerchant.hasNext()) {
			Merchant m = listOfMerchant.next();
			if(m.getEmail().equals(email)) {
				eflag=false;
			}
			if(m.getMobileNumber()==mob) {
				eMob=false;
			}
		}
		if(eflag==true||eMob==true) {
				merchant.setName(name);
				merchant.setEmail(email);
				merchant.setMobileNumber(mob);
				merchant.setPassword(password);
				AdminRepository adminDao = new AdminDao();
				List<Admin> allAdmin = adminDao.getAllAdmin();
				Iterator<Admin> admins = allAdmin.iterator();
				Admin ad = null;
				while (admins.hasNext()) {
					Admin admin = admins.next();
					if (admin.getEmail().equals("admin@gmail.com")) {
						ad = admin;
					}
				}
				
				merchant.setAdmin(ad);
				ProductDao productDao = new ProductDao();
				List<Product> allProduct = productDao.getAllProduct();
				merchant.setProducts(allProduct);
				
				Merchant m = merchantDao.saveMerchant(merchant);
				
				if (m != null && resp.getStatus() == 200) {
					
					resp.sendRedirect("MerchantLogin.jsp");
				} else {
					
					resp.sendRedirect("MerchantRegister.jsp");
				}
			
		}else {
			
			resp.sendRedirect("MerchantRegister.jsp");
		}
		
		

		
		

	}

}
