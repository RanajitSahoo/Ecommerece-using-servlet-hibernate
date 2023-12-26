package com.jsp.ServletController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dao.MerchantDao;
import com.jsp.dao.ProductDao;
import com.jsp.entities.Merchant;



@WebServlet("/Pages/Merchant/deleteProduct")
public class DeleteProductServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("pid"));
		int mid = Integer.parseInt(req.getParameter("mid"));
		System.out.println(id+"--"+mid);
		Merchant mer = new MerchantDao().getMerchantById(mid);
		new ProductDao().deleteProductById(id);
		resp.sendRedirect("DeleteProduct.jsp?id="+mer.getId());
		
		
	}
}
