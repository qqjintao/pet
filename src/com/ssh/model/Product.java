package com.ssh.model;

public class Product {
	private int id;
	private int Product_code;
	private String Product_name;
	private float Member_price;
	private int Store_code;
	private int Product_state;
	private int Subclass_code;
	private String Product_until;
	private String Product_introduce;
	public Product(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProduct_code() {
		return Product_code;
	}
	public void setProduct_code(int product_code) {
		Product_code = product_code;
	}
	public String getProduct_name() {
		return Product_name;
	}
	public void setProduct_name(String product_name) {
		Product_name = product_name;
	}
	public float getMember_price() {
		return Member_price;
	}
	public void setMember_price(float member_price) {
		Member_price = member_price;
	}
	public int getStore_code() {
		return Store_code;
	}
	public void setStore_code(int store_code) {
		Store_code = store_code;
	}
	public int getProduct_state() {
		return Product_state;
	}
	public void setProduct_state(int product_state) {
		Product_state = product_state;
	}
	public int getSubclass_code() {
		return Subclass_code;
	}
	public void setSubclass_code(int subclass_code) {
		Subclass_code = subclass_code;
	}
	public String getProduct_until() {
		return Product_until;
	}
	public void setProduct_until(String product_until) {
		Product_until = product_until;
	}
	public String getProduct_introduce() {
		return Product_introduce;
	}
	public void setProduct_introduce(String product_introduce) {
		Product_introduce = product_introduce;
	}
	
}
