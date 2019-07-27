package com.ssh.model;

public class PostalServiceView {
	private int Postal_code;
	private String Postal_name;//邮政名称
	private float Price;//价钱
	private String Explain;//说明
	private String Store_name;//店家名称
	private String Distribution_explain;//商家配送说明
	public PostalServiceView(){
		
	}
	
	public int getPostal_code() {
		return Postal_code;
	}

	public void setPostal_code(int postal_code) {
		Postal_code = postal_code;
	}

	public String getPostal_name() {
		return Postal_name;
	}
	public void setPostal_name(String postal_name) {
		Postal_name = postal_name;
	}
	public float getPrice() {
		return Price;
	}
	public void setPrice(float price) {
		Price = price;
	}
	public String getExplain() {
		return Explain;
	}
	public void setExplain(String explain) {
		Explain = explain;
	}
	public String getStore_name() {
		return Store_name;
	}
	public void setStore_name(String store_name) {
		Store_name = store_name;
	}
	public String getDistribution_explain() {
		return Distribution_explain;
	}
	public void setDistribution_explain(String distribution_explain) {
		Distribution_explain = distribution_explain;
	}
	
}
