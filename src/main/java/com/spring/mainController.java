package com.spring;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.spring.Dao.ProductDao;
import com.spring.model.Product;

@Controller
public class mainController {

	@Autowired
	private ProductDao dao;

	@RequestMapping("/controller")
	public String viewcontroller(Model m) {

		return "home";
	}

	@RequestMapping("/product")
	public String addProduct(Model m) {

		m.addAttribute("title", "product delails");

		return "add_product";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addproduct(@ModelAttribute Product product, Model m) {

		this.dao.createProduct(product);// hum log service leyaer use nahi kiye direct controller se dao/repositry layer
										// pr le gye

		List<Product> p = this.dao.getallProducts();
		m.addAttribute("product", p);

		System.out.println(product.getName());
		System.out.println(product.getPid());
		System.out.println(product.getPrice());
		System.out.println(product.getDescription());

		System.out.println("add wala method start ho gya");
		return "test";

	}

	@RequestMapping("/delete/{pid}")
	public RedirectView Delete(@PathVariable("pid") int pid, HttpServletRequest req) {

		this.dao.deleteProduct(pid);
		RedirectView r = new RedirectView();
		r.setUrl(req.getContextPath() + "/");

		return r;

	}

	// update
	@RequestMapping("/update/{pid}")
	public String updateForm(@PathVariable("pid") int pid, Model m) {
		Product product = this.dao.getsingleProduct(pid);
		m.addAttribute("product", product);
		return "update_form";

	}

}
