package com.jsp.ServletController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dao.CustomerDao;
import com.jsp.entities.Customer;
import com.jsp.utility.Address;

@WebServlet("/Pages/Customer/registerCustomer")
public class CustomerRegisterServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int cid=Integer.parseInt(req.getParameter("cid"));
		String name = req.getParameter("name");
		String image = req.getParameter("image");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String mobileNumber = req.getParameter("mobileNumber");
		String street = req.getParameter("street");
		String landmark = req.getParameter("landmark");
		String district = req.getParameter("district");
		String state = req.getParameter("state");
		String country = req.getParameter("country");
		int pincode=Integer.parseInt(req.getParameter("pincode"));
		Customer c = new Customer();
		c.setName(name);
		c.setImage(image);
		c.setEmail(email);
		c.setMobieNumber(mobileNumber);
		c.setPassword(password);
		Address ad = new Address();
		ad.setStreet(street);
		ad.setLandMark(landmark);
		ad.setDistrict(district);
		ad.setState(state);
		ad.setCountry(country);
		ad.setPincode(pincode);
		c.setAddress(ad);
		Customer saveCustomer = new CustomerDao().saveCustomer(c);
		if(saveCustomer!=null)resp.sendRedirect("CustomerLogin.jsp?cid="+cid);
		else resp.sendRedirect("CustomerRegister.jsp?cid="+cid);
		 
	}
}
