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

@WebServlet("/Pages/Admin/searchMerchants")
public class SearchMerchant extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String search = req.getParameter("search");

		resp.sendRedirect("AdminHomePage.jsp?list=" + search + "");

	}
}
