package com.jsp.repository;

import java.util.List;

import com.jsp.entities.Cart;
import com.jsp.entities.Item;

public interface ItemRepository {
	Item saveItem(Item item);
	Item getItemById(int id);
	List<Item> getItemByName(String name);
	void deleteItemById(int id);
	Item updateItemById(Item item);
	List<Item> getItemsByCart(Cart cart);

}
