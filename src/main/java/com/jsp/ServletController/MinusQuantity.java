package com.jsp.ServletController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dao.ItemDao;
import com.jsp.entities.Item;

@WebServlet("/Pages/Customer/minus")
public class MinusQuantity extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Item i = new ItemDao().getItemById(Integer.parseInt(req.getParameter("id")));
		int n = Integer.parseInt(req.getParameter("n"));
		int cid = Integer.parseInt(req.getParameter("cid"));
		if(n>1)n-=1;
		i.setQuantity(n);
		Item item = new ItemDao().updateItemById(i);
		resp.sendRedirect("ItemDetails.jsp?id="+item.getId()+"&cid="+cid);
	}
}
