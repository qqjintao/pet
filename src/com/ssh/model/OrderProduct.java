package com.ssh.model;

public class OrderProduct {
	private int id;
	private int OrderProduct_code;
	private String Mobile_phone;
	private int ProductSuitId;
	private int Store_code;
	private int OrderProduct_sum;
	public OrderProduct(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOrderProduct_code() {
		return OrderProduct_code;
	}
	public void setOrderProduct_code(int orderProduct_code) {
		OrderProduct_code = orderProduct_code;
	}
	public String getMobile_phone() {
		return Mobile_phone;
	}
	public void setMobile_phone(String mobile_phone) {
		Mobile_phone = mobile_phone;
	}
	
	public int getProductSuitId() {
		return ProductSuitId;
	}
	public void setProductSuitId(int productSuitId) {
		ProductSuitId = productSuitId;
	}
	public int getStore_code() {
		return Store_code;
	}
	public void setStore_code(int store_code) {
		Store_code = store_code;
	}
	public int getOrderProduct_sum() {
		return OrderProduct_sum;
	}
	public void setOrderProduct_sum(int orderProduct_sum) {
		OrderProduct_sum = orderProduct_sum;
	}
	
}
