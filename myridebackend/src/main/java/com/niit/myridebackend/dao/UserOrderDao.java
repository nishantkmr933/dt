package com.niit.myridebackend.dao;

import com.niit.myridebackend.model.UserOrder;

public interface UserOrderDao {

	void add(UserOrder userOrder);
	
	UserOrder getUserOrderById(int userOrderId);
}
