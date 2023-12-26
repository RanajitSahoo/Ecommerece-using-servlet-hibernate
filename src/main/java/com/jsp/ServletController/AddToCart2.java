package com.jsp.ServletController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.dao.CartDao;
import com.jsp.dao.ItemDao;
import com.jsp.entities.Cart;
import com.jsp.entities.Item;

@WebServlet("/Pages/Customer/addtoCart2")
public class AddToCart2 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Item i = new ItemDao().getItemById(Integer.parseInt(req.getParameter("id")));
		int cid = Integer.parseInt(req.getParameter("cid"));
		Cart cart = new CartDao().getCart(cid);
		HttpSession session = req.getSession();
		
		i.setCart(cart);
		new ItemDao().updateItemById(i);
		resp.sendRedirect("CustomerHomePage.jsp?cid="+cart.getId());
		
	}
}
