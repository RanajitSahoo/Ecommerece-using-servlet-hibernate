package com.jsp.ServletController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dao.ItemDao;
import com.jsp.dao.ProductDao;
import com.jsp.entities.Item;
import com.jsp.entities.Product;

@WebServlet("/Pages/Customer/addtoCart")
public class AddToCart extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("---");
		int pid = Integer.parseInt(req.getParameter("pid"));
		Product p = new ProductDao().getProductById(pid);
		int cid = Integer.parseInt(req.getParameter("cid"));
		Item i = new Item();
		i.setName(p.getName());
		i.setImage(p.getImage());
		i.setType(p.getCategory());
		i.setPrice(p.getPrice());
		i.setMerchant(p.getMerchant());
		Item s = new ItemDao().saveItem(i);
		resp.sendRedirect("ItemDetails.jsp?id="+s.getId()+"&cid="+cid);
	}
}
