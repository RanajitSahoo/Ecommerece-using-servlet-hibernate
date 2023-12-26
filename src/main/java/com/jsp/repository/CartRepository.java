package com.jsp.repository;

import com.jsp.entities.Cart;

public interface CartRepository {
	
	Cart saveCart(Cart cart);
	Cart getCart(int id);
	void deleteCart(int id);
	Cart updateCart(Cart cart);
	

}
