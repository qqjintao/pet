package com.ssh.model;

public class DeliverGoods {
	int id;
	int Postal_code;
	int Store_code;
	int Price;
	String Explain;
	String Remark;
	int Deliver_state;
	public DeliverGoods(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPostal_code() {
		return Postal_code;
	}
	public void setPostal_code(int postal_code) {
		Postal_code = postal_code;
	}
	public int getStore_code() {
		return Store_code;
	}
	public void setStore_code(int store_code) {
		Store_code = store_code;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	public String getExplain() {
		return Explain;
	}
	public void setExplain(String explain) {
		Explain = explain;
	}
	public String getRemark() {
		return Remark;
	}
	public void setRemark(String remark) {
		Remark = remark;
	}
	public int getDeliver_state() {
		return Deliver_state;
	}
	public void setDeliver_state(int deliver_state) {
		Deliver_state = deliver_state;
	}
	
}
