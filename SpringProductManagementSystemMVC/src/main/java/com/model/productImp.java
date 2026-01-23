package com.model;

import java.util.ArrayList;
import com.controller.loginController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.bean.Product;
import com.bean.userpass;

@Component
public class productImp implements productInterface {

	@Autowired
JdbcTemplate jt;

	public productImp() {
		
	}
	
	public void setJt(JdbcTemplate jt) {
		this.jt = jt;
	}

	@Override
	public int auth(String uname, String pass) {
		String query = "select * from userLogin where username ='"+uname +"' and password = '"+pass+"'";
		 ArrayList<userpass> list = (ArrayList<userpass>) jt.query(query,new AuthMapperImp());
	
		if(!list.isEmpty()) {
			return 1;
		}
		else {
			return 0;
		}
	}

	@Override
	public void addProduct(Product p) {
		String query = "insert into product values("+p.getPid()+",'"+p.getPname()+"',"+p.getQty()+","+p.getPrice()+")";
		jt.update(query);
		}

	@Override
	public void deleteProduct(int p) {
	String query = "delete from product where pid =?";
	jt.update(query,p);
	}

	@Override
	public int updateProduct(Product p) {
		String query = "select * from product where pid = ?";
		ArrayList<Product> list = (ArrayList<Product>) jt.query(query,new RowMapperImp(),p.getPid());
		
		if(!list.isEmpty()) {
		String query1 = "update product set pname =?, qty =?,price = ? where pid=?";
		jt.update(query1,p.getPname(),p.getQty(),p.getPrice(),p.getPid());
		
		return 1;
		}
		else {
			return 0;
		}
	}

	@Override
	public ArrayList<Product> showbyidProduct(int pid) {
		String query = "select * from product where pid = ?";
		ArrayList<Product> list = (ArrayList<Product>) jt.query(query,new RowMapperImp(),pid);
		
		return list;
	}

	@Override
	public ArrayList<Product> showallProduct() {
		String query = "select * from product";
		ArrayList<Product> list = (ArrayList<Product>) jt.query(query,new RowMapperImp());
		
		return list;
	}
	
	
	

}
