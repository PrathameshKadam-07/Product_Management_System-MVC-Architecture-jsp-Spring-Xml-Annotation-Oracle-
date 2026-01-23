package com.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.userpass;
import com.model.productImp;

@Controller
public class loginController {
	
	@Autowired
	productImp pi ;

//	http//localhost:8080/index----------------------Http get request
	@RequestMapping(value = "/index", method = RequestMethod.POST)
	public String getindex() 
	{
		return "index";
	}
	
	
	@RequestMapping("/service")
	public String service() {
		return "service";
	}
	
	@RequestMapping("/help")
	public String help() {
		return "help";
	}
	
	  @RequestMapping("/login")	
	  public String getLogin()
	  {
		 return "login";
	  }
	
	@RequestMapping("/auth")
	public String auth(HttpServletRequest request,Model m) {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		String msg = "Invalid username and password";
		
		int i = pi.auth(uname, pass);
		if(i==1) 
		{
			return "home";
		}
		else 
		{
			m.addAttribute("msg",msg);
			return "login" ;
		}
		
	}
	
	
	
}
