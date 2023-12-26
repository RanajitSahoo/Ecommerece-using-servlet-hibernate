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

import com.jsp.dao.CartDao;
import com.jsp.dao.CustomerDao;

import com.jsp.entities.Cart;
import com.jsp.entities.Customer;

import com.jsp.repository.CustomerRepository;

@WebServlet("/Pages/Customer/customerLogin")
public class CustomerLoginServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int cid=Integer.parseInt(req.getParameter("cid"));
		Cart cart = new CartDao().getCart(cid);
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		CustomerRepository cd= new CustomerDao();
		List<Customer> cs = cd.getAllCustomers();
		Iterator<Customer> itr = cs.iterator();
		boolean flag=false;
		if(!cs.isEmpty()) {
			while(itr.hasNext()) {
				Customer c = itr.next();
				if(c.getEmail().equals(email)&&c.getPassword().equals(password)) {
					flag=true;
					c.setCart(cart);
					c.setStatus("Active");
					Customer updateCustomer = cd.updateCustomer(c);
					HttpSession session = req.getSession();
					session.setAttribute("customer", updateCustomer);
					
					break;
				}
			}
		}else {
			
			System.out.println("no Customers are there");
		}
		if(flag) {
			
			resp.sendRedirect("CustomerHomePage.jsp?cid="+cart.getId());
		}else {
			resp.sendRedirect("CustomerLogin.jsp?cid="+cart.getId());
		}
	}
}
