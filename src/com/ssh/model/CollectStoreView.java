package com.ssh.model;

public class CollectStoreView {
	private String Mobile_phone;
	private int CodeType;
	private int id;
	private int Store_code;
	private String Store_name;
	private String Store_logo;
	public CollectStoreView(){
		
	}
	public String getMobile_phone() {
		return Mobile_phone;
	}
	public void setMobile_phone(String mobile_phone) {
		Mobile_phone = mobile_phone;
	}
	public int getCodeType() {
		return CodeType;
	}
	public void setCodeType(int codeType) {
		CodeType = codeType;
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
	public String getStore_name() {
		return Store_name;
	}
	public void setStore_name(String store_name) {
		Store_name = store_name;
	}
	public String getStore_logo() {
		return Store_logo;
	}
	public void setStore_logo(String store_logo) {
		Store_logo = store_logo;
	}
	
}
