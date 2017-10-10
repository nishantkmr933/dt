package com.niit.myridebackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.myridebackend.dao.ProductDao;
import com.niit.myridebackend.model.Product;

@Repository
@EnableTransactionManagement
@Transactional
public class ProductDaoImpl implements ProductDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void add(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

	@Override
	public void update(Product product) {
		sessionFactory.getCurrentSession().update(product);
	}

	@Override
	public void delete(Product product) {
		sessionFactory.getCurrentSession().delete(product);
	}

	@Override
	public Product getById(int productId) {
		String hql = "from Product where productId=" + productId;
		Product product = (Product) sessionFactory.getCurrentSession().createQuery(hql).getSingleResult();
		return product;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getByBrand(String brand) {
		String hql = "from Product where brand='" + brand + "'";
		List<Product> products = sessionFactory.getCurrentSession().createQuery(hql).getResultList();
		return products;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getByCategory(String category) {
		String hql = "from Product where category='" + category + "'";
		List<Product> products = sessionFactory.getCurrentSession().createQuery(hql).getResultList();
		return products;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> list() {
		String hql = "from Product";
		List<Product> products = sessionFactory.getCurrentSession().createQuery(hql).getResultList();
		return products;
	}

}
