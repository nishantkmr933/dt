package com.niit.myridefrontend.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.myridebackend.dao.ProductDao;
import com.niit.myridebackend.model.Product;

@Controller
public class AdminController {

	@Autowired
	ProductDao productDao;
	
	@RequestMapping(value = "/productAdmin", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("productList", productDao.list());
		return "productAdmin";
	}
	
	@RequestMapping(value = "/productAdmin/add", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request) {
		//String filename = null;
		byte[] buffer;
		
		if (!product.getImage().isEmpty()) {
			try {
				buffer = product.getImage().getBytes();
				productDao.add(product);
				String path = request.getSession().getServletContext().getRealPath("/resources/images/" + product.getProductId() + ".jpg");
				File file = new File(path);
				BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(file));
				bos.write(buffer);
				bos.close();
			} catch (Exception ex) {
				System.err.println(ex.getMessage());
			}
		}
		
		if (result.hasErrors()) {
			return "productAdmin";
		} else {
			if (product.getProductId() == 0) {
				productDao.add(product);
			} else {
				productDao.update(product);
			}
			return "redirect:/productAdmin";
		}
	}
	
	@RequestMapping(value = "/edit/{id}")
	public String editProduct(@PathVariable("id") int id, Model model) {
		model.addAttribute("product", productDao.getById(id));
		model.addAttribute("productList", productDao.list());
		return "productAdmin";
	}
	
	@RequestMapping(value = "/remove/{id}")
	public String removeProduct(@PathVariable("id") int id) {
		productDao.delete(productDao.getById(id));
		return "redirect:/productAdmin";
	}
	
}
