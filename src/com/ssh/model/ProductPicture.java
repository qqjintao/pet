package com.ssh.model;

public class ProductPicture {
	private int id;
	private int Product_code;
	private String Product_photo;
	private String Product_bigphoto;
	public ProductPicture(){
		
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
	public String getProduct_photo() {
		return Product_photo;
	}
	public void setProduct_photo(String product_photo) {
		Product_photo = product_photo;
	}
	public String getProduct_bigphoto() {
		return Product_bigphoto;
	}
	public void setProduct_bigphoto(String product_bigphoto) {
		Product_bigphoto = product_bigphoto;
	}
	
}
