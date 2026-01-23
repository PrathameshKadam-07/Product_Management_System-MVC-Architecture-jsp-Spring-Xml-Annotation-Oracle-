package com.model;

import java.util.ArrayList;

import com.bean.Product;


public interface productInterface {
 public int auth(String uname,String pass);
 public void addProduct(Product p);
 public void deleteProduct(int p);
 public int updateProduct(Product p);
 public ArrayList<Product> showbyidProduct(int p);
 public ArrayList<Product> showallProduct();
 
}
