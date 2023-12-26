package com.jsp.repository;

import java.util.List;
import com.jsp.entities.Customer;

public interface CustomerRepository {
	
	 Customer saveCustomer(Customer customer);
	 Customer getCustomerById(int id);
	 List<Customer> getCustomerByEmail(String email);
	 List<Customer> getCustomerByName(String name);
	 List<Customer> getCustomerByMobileNumber(String mobileNumber);
	 List<Customer> getCustomerByStatus(String status);
	 List<Customer> getAllCustomers();
	 void deleteCustomerById(int id);
	 Customer updateCustomer(Customer customer);
	
}
