package com.jsp.repository;

import java.util.List;

import com.jsp.entities.Merchant;
import com.jsp.entities.Product;

public interface ProductRepository {
	Product saveProduct(Product product);
	Product getProductById(int id);
	List<Product> getProductByName(String name);
	List<Product> getProductByCategory(String category);
	List<Product> getAllProduct();
	void deleteProductById(int id);
	Product updateProduct(Product product);
	List<Product> getAllProductByMerchant(Merchant m);
}
