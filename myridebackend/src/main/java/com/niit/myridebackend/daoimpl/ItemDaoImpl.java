package com.niit.myridebackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.myridebackend.dao.ItemDao;
import com.niit.myridebackend.model.Cart;
import com.niit.myridebackend.model.Item;


@Repository("itemDao")
@EnableTransactionManagement
@Transactional
public class ItemDaoImpl implements ItemDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void add(Item item) {
		sessionFactory.getCurrentSession().saveOrUpdate(item);
	}

	@Override
	public void remove(Item item) {
		sessionFactory.getCurrentSession().delete(item);
	}

	@Override
	public void removeAll(Cart cart) {
		List<Item> items = cart.getItems();
//		items.stream().forEach(item -> remove(item));
		for (Item item : items) {
			remove(item);
		}
	}

	@Override
	public Item getItemById(int itemId) {
		String hql = "from Item where itemId=" + itemId;
		Item item = (Item) sessionFactory.getCurrentSession().createQuery(hql).getSingleResult();
		return item;
	}

}
