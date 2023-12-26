package com.jsp.ServletController;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dao.CartDao;
import com.jsp.dao.CustomerDao;
import com.jsp.dao.ItemDao;
import com.jsp.entities.Cart;
import com.jsp.entities.Customer;
import com.jsp.entities.Item;
@WebServlet("/Pages/Customer/placedOrder")
public class PlacedOrderServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Cart cart = new CartDao().getCart(Integer.parseInt(req.getParameter("cid")));
		Customer customer = new CustomerDao().getCustomerById(Integer.parseInt(req.getParameter("custId")));
		double total = Double.parseDouble(req.getParameter("total"));
		System.out.println(total);
		cart.setTotalPrice(total);
		List<Item> items = new ItemDao().getItemsByCart(cart);
		cart.setItems(items);
		cart.setCustomer(customer);
		customer.setCart(cart);
		Cart updateCart = new CartDao().updateCart(cart);
		Customer updateCustomer = new CustomerDao().updateCustomer(customer);
		
		resp.sendRedirect("SuccessOrder.jsp?cid="+updateCart.getId()+"&custId="+updateCustomer.getId());
		
		
	}

}
