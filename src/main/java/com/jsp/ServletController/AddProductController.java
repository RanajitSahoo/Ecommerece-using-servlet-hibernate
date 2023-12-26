package com.jsp.ServletController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.dao.MerchantDao;
import com.jsp.dao.ProductDao;
import com.jsp.entities.Merchant;
import com.jsp.entities.Product;
import com.jsp.repository.MerchantRepository;

@WebServlet("/Pages/Merchant/addProduct")
public class AddProductController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String image = req.getParameter("image");
		String category = req.getParameter("category");
		Double price = Double.parseDouble(req.getParameter("price"));
		int stock = Integer.parseInt(req.getParameter("stock"));
		int id = Integer.parseInt(req.getParameter("id"));
		MerchantRepository merchantDao = new MerchantDao();
		Merchant mer = merchantDao.getMerchantById(id);
		ProductDao productDao = new ProductDao();
		Product p = new Product();
		p.setName(name);
		p.setImage(image);
		p.setCategory(category);
		p.setPrice(price);
		p.setStock(stock);
		p.setMerchant(mer);
		Product sp = productDao.saveProduct(p);
//		System.out.println(sp + "-->");
		
		if (sp != null) {
			HttpSession session = req.getSession();
			session.setAttribute("merchant", mer);
			resp.sendRedirect("MerchantHomePage.jsp");
		} else {
			resp.sendRedirect("AddProduct.jsp");
		}

	}
}
