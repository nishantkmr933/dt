package com.niit.myridebackend.dao;

import com.niit.myridebackend.model.Cart;
import com.niit.myridebackend.model.Item;

public interface ItemDao {

	void add(Item item);
	
	void remove(Item item);
	
	void removeAll(Cart cart);
	
	Item getItemById(int itemId);
}
