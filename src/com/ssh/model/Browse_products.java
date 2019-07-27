package com.ssh.model;

public class Browse_products {
	private int id;
	private String Product_name;
	private float Member_price;
	private String Product_photo;
	private  int Product_code;
	private String BroadHeading_name;
	private String Subclass_name;
	private int Evaluate;//评价数量
	private int Sales;//销售数量
	public Browse_products(){
		
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
	public String getProduct_photo() {
		return Product_photo;
	}
	public void setProduct_photo(String product_photo) {
		Product_photo = product_photo;
	}
	public int getProduct_code() {
		return Product_code;
	}
	public void setProduct_code(int product_code) {
		Product_code = product_code;
	}
	public String getBroadHeading_name() {
		return BroadHeading_name;
	}
	public void setBroadHeading_name(String broadHeading_name) {
		BroadHeading_name = broadHeading_name;
	}
	public String getSubclass_name() {
		return Subclass_name;
	}
	public void setSubclass_name(String subclass_name) {
		Subclass_name = subclass_name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getEvaluate() {
		return Evaluate;
	}
	public void setEvaluate(int evaluate) {
		Evaluate = evaluate;
	}
	public int getSales() {
		return Sales;
	}
	public void setSales(int sales) {
		Sales = sales;
	}

	
}
