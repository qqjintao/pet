package com.ssh.model;

public class StoreAccount {
	private int id;
	private int Store_code;
	private String Admin_account;
	private String Admin_password;
	private String Admin_name;
	private String Admin_email;
	private String Admin_phone;
	private int Admin_jurisdiction;
	private boolean Registration_state;
	public StoreAccount(){
		
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
	public String getAdmin_account() {
		return Admin_account;
	}
	public void setAdmin_account(String admin_account) {
		Admin_account = admin_account;
	}
	public String getAdmin_password() {
		return Admin_password;
	}
	public void setAdmin_password(String admin_password) {
		Admin_password = admin_password;
	}
	public String getAdmin_name() {
		return Admin_name;
	}
	public void setAdmin_name(String admin_name) {
		Admin_name = admin_name;
	}
	public String getAdmin_email() {
		return Admin_email;
	}
	public void setAdmin_email(String admin_email) {
		Admin_email = admin_email;
	}
	public String getAdmin_phone() {
		return Admin_phone;
	}
	public void setAdmin_phone(String admin_phone) {
		Admin_phone = admin_phone;
	}
	public int getAdmin_jurisdiction() {
		return Admin_jurisdiction;
	}
	public void setAdmin_jurisdiction(int admin_jurisdiction) {
		Admin_jurisdiction = admin_jurisdiction;
	}
	public boolean isRegistration_state() {
		return Registration_state;
	}
	public void setRegistration_state(boolean registration_state) {
		Registration_state = registration_state;
	}
	
}
