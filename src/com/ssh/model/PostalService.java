package com.ssh.model;

public class PostalService {
	private int id;
	private int Postal_code;
	private String Postal_name;
	public PostalService(){
		
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
	public String getPostal_name() {
		return Postal_name;
	}
	public void setPostal_name(String postal_name) {
		Postal_name = postal_name;
	}
	
}
