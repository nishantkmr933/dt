package com.niit.myridebackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.myridebackend.dao.UserDao;
import com.niit.myridebackend.model.Address;
import com.niit.myridebackend.model.Cart;
import com.niit.myridebackend.model.User;

@Repository
@Transactional
@EnableTransactionManagement
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public void add(User user) {
		user.setEnabled(true);
		user.setRole("USER");
		Cart cart = new Cart();
		cart.setUser(user);
		user.setCart(cart);
		
		Address shippingAddress = new Address();
		shippingAddress.setUser(user);
		user.setAddress(shippingAddress);
		
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}

	
	public void update(User user) {
		sessionFactory.getCurrentSession().update(user);
	}

	
	public void delete(User user) {
		sessionFactory.getCurrentSession().delete(user);
	}

	
	public User getById(int userId) {
		String hql = "from User where userId=" + userId;
		User user = (User) sessionFactory.getCurrentSession().createQuery(hql).getSingleResult();
		return user;
	}

	
	public User getByUsername(String username) {
		String hql = "from User where username='" + username + "'";
		User user = (User) sessionFactory.getCurrentSession().createQuery(hql).getSingleResult();
		return user;
	}

	
	@SuppressWarnings("unchecked")
	public List<User> list() {
		List<User> users = sessionFactory.getCurrentSession().createQuery("from User").getResultList();
		return users;
	}

}
