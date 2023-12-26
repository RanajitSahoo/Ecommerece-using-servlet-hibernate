package com.jsp.ServletController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.dao.CartDao;
import com.jsp.entities.Cart;

@WebServlet("/customeHomePage")
public class CustomerHomePageController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Cart cart = new Cart();
		Cart saveCart = new CartDao().saveCart(cart);
		
		resp.sendRedirect("/Ecommerce-Servlet-Hibernate/Pages/Customer/CustomerHomePage.jsp?cid="+saveCart.getId());
	}
}
