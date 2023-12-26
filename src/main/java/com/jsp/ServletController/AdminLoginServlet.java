package com.jsp.ServletController;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.dao.AdminDao;
import com.jsp.dao.MerchantDao;
import com.jsp.entities.Admin;
import com.jsp.entities.Merchant;
import com.jsp.exception.WrongEmailException;
import com.jsp.exception.WrongPasswordException;
import com.jsp.repository.AdminRepository;

@WebServlet("/Pages/Admin/adminLogin")
public class AdminLoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		AdminRepository adminDao = new AdminDao();
		MerchantDao merchantDao = new MerchantDao();
		// admin input from the login page
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		List<Admin> allAdmin = adminDao.getAllAdmin();
		if(allAdmin.isEmpty()) {
			if (email.equals("admin@gmail.com")) {
				if (password.equals("12345")) {
					Admin admin = new Admin();
					admin.setEmail(email);
					admin.setPassword(password);
					List<Merchant> allMerchants = merchantDao.getAllMerchants();
					admin.setMerchants(allMerchants);
					

					adminDao.saveAdmin(admin);
					
					HttpSession session = req.getSession();
					session.setAttribute("email", email);
					session.setAttribute("password", session);
					
					resp.sendRedirect("AdminHomePage.jsp");
				}
			}else {
				resp.sendRedirect("AdminLogin.jsp");
			}
		}else {
			
			Iterator<Admin> iterator = allAdmin.iterator();
			while (iterator.hasNext()) {
				Admin adm = iterator.next();
				if (adm.getEmail().equals(email) && adm.getPassword().equals(password)) {
					List<Merchant> allMerchants = merchantDao.getAllMerchants();
					adm.setMerchants(allMerchants);
					Admin admin = adminDao.updateAdmin(adm);
					
					HttpSession session = req.getSession();
					session.setAttribute("email", email);
					session.setAttribute("password", admin.getPassword());

					resp.sendRedirect("AdminHomePage.jsp");
				} else {
					resp.sendRedirect("AdminLogin.jsp");
				}

			}
		}

		

		
		

	}
}
