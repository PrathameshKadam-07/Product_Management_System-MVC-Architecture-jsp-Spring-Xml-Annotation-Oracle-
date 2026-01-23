package com.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Product;
import com.model.productImp;

@Controller
public class productController {

	@Autowired
	productImp pi;
	
	@RequestMapping("/addProduct")
	public String addProduct() {
		return "addProduct";
	}
	
	@RequestMapping("/deleteProduct")
	public String deleteProduct() {
		return "deleteProduct";
	}
	
	@RequestMapping("/updateProduct")
	public String updateProduct() {
		return "updateProduct";
	}
	
	@RequestMapping("/showbyidProduct")
	public String showbyidProduct() {
		return "showbyidProduct";
	}

	
	@RequestMapping("/add")
	public String add(HttpServletRequest request,Model m) {
		int pid = Integer.parseInt(request.getParameter("pid"));
		String pname = request.getParameter("pname");
		int qty = Integer.parseInt(request.getParameter("qty"));
		int price = Integer.parseInt(request.getParameter("price"));
		
		Product p = new Product(pid,pname,qty,price);
		pi.addProduct(p);
		
		m.addAttribute("msg","Successful Login..");
		
		return "addProduct";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request,Model m) {
		int pid = Integer.parseInt(request.getParameter("pid"));
		Product p = new Product();
		pi.deleteProduct(pid);
		
		m.addAttribute("msg","Successful Deleted..");
		return "deleteProduct";
	}
	
	@RequestMapping("/update")
	public String update(HttpServletRequest request, Model m) 
	{
		int pid = Integer.parseInt(request.getParameter("pid"));
		String pname = request.getParameter("pname");
		int qty = Integer.parseInt(request.getParameter("qty"));
		int price = Integer.parseInt(request.getParameter("price"));
		
		Product p = new Product(pid,pname,qty,price);
		int i = pi.updateProduct(p);
		if(i == 1) {
			m.addAttribute("msg", "Updated");
		}
		else 
		{
			m.addAttribute("msg","Product not found");
		}
		return "updateProduct";
	}
	
	@RequestMapping("/search")
	public String search(HttpServletRequest request,Model m) {
		int pid = Integer.parseInt(request.getParameter("pid"));
		ArrayList<Product> list =  pi.showbyidProduct(pid);
		
		if(!list.isEmpty()) 
		{
			m.addAttribute("list",list);
		}
		return "showbyidProduct";
	}
	
	@RequestMapping("/showallProduct")
	public String show(HttpServletRequest request,Model m) {
		ArrayList<Product> list =  pi.showallProduct();
		
		if(!list.isEmpty()) 
		{
			m.addAttribute("list",list);
		}
		return "showallProduct";
	}
}
