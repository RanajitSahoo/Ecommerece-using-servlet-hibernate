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
import com.jsp.entities.Product;

@WebServlet("/Pages/Merchant/updateProduct")
public class UpdateProductServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("--------------");
		int pid = Integer.parseInt(req.getParameter("pid"));
		int mid = Integer.parseInt(req.getParameter("mid"));
		System.out.println(pid+"-"+mid);
		Merchant mer = new MerchantDao().getMerchantById(mid);
		Product p = new ProductDao().getProductById(pid);
		p.setName(req.getParameter("name"));
		p.setImage(req.getParameter("image"));
		p.setCategory(req.getParameter("category"));
		p.setPrice(Double.parseDouble(req.getParameter("price")));
		p.setStock(Integer.parseInt(req.getParameter("stock")));
		new ProductDao().updateProduct(p);
		resp.sendRedirect("UpdateProduct.jsp?id="+mer.getId());
	}
}
