package com.niit.myridebackend.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.myridebackend.dao.UserOrderDao;
import com.niit.myridebackend.model.UserOrder;

@Repository("userOrderDao")
@Transactional
@EnableTransactionManagement
public class UserOrderDaoImpl implements UserOrderDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void add(UserOrder userOrder) {
		sessionFactory.getCurrentSession().saveOrUpdate(userOrder);
	}

	@Override
	public UserOrder getUserOrderById(int userOrderId) {
		String hql = "from UserOrder where userOrderId=" + userOrderId;
		UserOrder userOrder = (UserOrder) sessionFactory.getCurrentSession().createQuery(hql).getSingleResult();
		return userOrder;
	}
}
