package com.ssh.model;

public class Payment {
	private int id;
	private int Payment_code;
	private int Store_code;
	private String Account_number;
	private String Explain;
	private String Remark;
	private int Payment_state;
	public Payment(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPayment_code() {
		return Payment_code;
	}
	public void setPayment_code(int payment_code) {
		Payment_code = payment_code;
	}
	public int getStore_code() {
		return Store_code;
	}
	public void setStore_code(int store_code) {
		Store_code = store_code;
	}
	public String getAccount_number() {
		return Account_number;
	}
	public void setAccount_number(String account_number) {
		Account_number = account_number;
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
	public int getPayment_state() {
		return Payment_state;
	}
	public void setPayment_state(int payment_state) {
		Payment_state = payment_state;
	}
	
}
