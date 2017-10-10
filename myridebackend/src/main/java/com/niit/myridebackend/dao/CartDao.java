package com.niit.myridebackend.dao;

import com.niit.myridebackend.model.Cart;

public interface CartDao {

	void add(Cart cart);
	
	void update(Cart cart);
	
	Cart getById(int cartId);
	
	Cart getByUserId(int userId);
}
