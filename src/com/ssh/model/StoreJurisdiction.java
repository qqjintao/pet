package com.ssh.model;

public class StoreJurisdiction {
	private int id;
	private int Store_code;
	private int Admin_jurisdiction;
	private String Jurisdiction_name;
	private String Jurisdiction_describe;
	public StoreJurisdiction(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStore_code() {
		return Store_code;
	}
	public void setStore_code(int store_code) {
		Store_code = store_code;
	}
	public int getAdmin_jurisdiction() {
		return Admin_jurisdiction;
	}
	public void setAdmin_jurisdiction(int admin_jurisdiction) {
		Admin_jurisdiction = admin_jurisdiction;
	}
	public String getJurisdiction_name() {
		return Jurisdiction_name;
	}
	public void setJurisdiction_name(String jurisdiction_name) {
		Jurisdiction_name = jurisdiction_name;
	}
	public String getJurisdiction_describe() {
		return Jurisdiction_describe;
	}
	public void setJurisdiction_describe(String jurisdiction_describe) {
		Jurisdiction_describe = jurisdiction_describe;
	}
	
}
