package com.ssh.model;

public class IndentProduct {
	private int id;
	private long Indent_code;
	private int Product_code;
	private int ProductSuitId;
	private int Product_number;
	private float Product_price;
	private boolean Indent_state;
	public IndentProduct(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public long getIndent_code() {
		return Indent_code;
	}
	public void setIndent_code(long indent_code) {
		Indent_code = indent_code;
	}
	public int getProduct_code() {
		return Product_code;
	}
	public void setProduct_code(int product_code) {
		Product_code = product_code;
	}
	public int getProductSuitId() {
		return ProductSuitId;
	}
	public void setProductSuitId(int productSuitId) {
		ProductSuitId = productSuitId;
	}
	public int getProduct_number() {
		return Product_number;
	}
	public void setProduct_number(int product_number) {
		Product_number = product_number;
	}
	public float getProduct_price() {
		return Product_price;
	}
	public void setProduct_price(float product_price) {
		Product_price = product_price;
	}
	public boolean isIndent_state() {
		return Indent_state;
	}
	public void setIndent_state(boolean indent_state) {
		Indent_state = indent_state;
	}
	
}
