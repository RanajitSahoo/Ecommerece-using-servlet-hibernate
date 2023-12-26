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

import com.jsp.dao.MerchantDao;
import com.jsp.entities.Merchant;
import com.jsp.repository.MerchantRepository;
@WebServlet("/Pages/Merchant/merchantLogin")
public class MerchantLoginServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			MerchantRepository merchantDao= new MerchantDao();
			List<Merchant> merchants = merchantDao.getAllMerchants();
			Iterator<Merchant> itr = merchants.iterator();
			boolean flag=false;
			if(!merchants.isEmpty()) {
				while(itr.hasNext()) {
					Merchant m = itr.next();
					if(m.getEmail().equals(email)&&m.getPassword().equals(password)) {
						flag=true;
						HttpSession session = req.getSession();
						session.setAttribute("merchant", m);
						
						break;
					}
				}
			}else {
				
				System.out.println("no merchants are there");
			}
			if(flag) {
				
				resp.sendRedirect("MerchantHomePage.jsp");
			}else {
				resp.sendRedirect("MerchantLogin.jsp");
			}
	}
}
