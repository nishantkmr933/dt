package com.niit.myridefrontend.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.myridebackend.dao.CartDao;
import com.niit.myridebackend.dao.ItemDao;
import com.niit.myridebackend.dao.ProductDao;
import com.niit.myridebackend.dao.UserDao;
import com.niit.myridebackend.dao.UserOrderDao;
import com.niit.myridebackend.model.Cart;
import com.niit.myridebackend.model.Item;
import com.niit.myridebackend.model.Product;
import com.niit.myridebackend.model.User;
import com.niit.myridebackend.model.UserOrder;

@Controller
public class CartController {

	@Autowired
	UserDao userDao;
	
	@Autowired
	UserOrderDao userOrderDao;
	
	@Autowired
	CartDao cartDao;
	
	@Autowired
	ItemDao itemDao;
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/addToCart/{productId")
	public ModelAndView cart(@PathVariable("productId") int productId, Principal principal) {
		ModelAndView model = new ModelAndView("cart");
		
		User user = userDao.getByUsername(principal.getName());
		model.addObject("user", user);
		Cart cart = user.getCart();
		Product product = productDao.getById(productId);
		List<Item> items = cart.getItems();
		
		// Check if the item exists in the cart
		for (Item item : items) {
			if (product.getProductId() == item.getProduct().getProductId()) {
				// If the item exists, increment the quantity and the total
				item.setQuantity(item.getQuantity() + 1);
				item.setItemTotal(item.getQuantity() * product.getPrice());
				itemDao.add(item);
				
				return model;
			}
		}
		
		// If the item does not exist in the cart
		Item item = new Item();
		item.setProduct(product);
		item.setQuantity(1);
		item.setItemTotal(item.getQuantity() * product.getPrice());
		item.setCart(cart);
		
		itemDao.add(item);
		
		return model;
	}
	
	@RequestMapping(value = "/placeOrder/{cartId}")
	public String placeOrder(@PathVariable("cartId") int cartId) {
		UserOrder userOrder = new UserOrder();
		Cart cart = cartDao.getById(cartId);
		userOrder.setCart(cart);
		
		User user = cart.getUser();
		userOrder.setUser(user);
		
		userOrderDao.add(userOrder);
		
		return "redirect:/checkout?userOrderId=" + userOrder.getUserOrderId();
	}
	
	@RequestMapping("/showCart")
	public ModelAndView showCart(Principal principal) {
		ModelAndView model = new ModelAndView("cart");
		User user = userDao.getByUsername(principal.getName());
		model.addObject("user", user);
		
		return model;
	}
}
