package com.ssh.model;

public class ServiceQQ {
	private int id;
	private int QQ_code;
	private int Store_code;
	private int QQ_number;
	private Boolean QQ_state;
	private String Remark;
	public ServiceQQ(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getQQ_code() {
		return QQ_code;
	}
	public void setQQ_code(int qQ_code) {
		QQ_code = qQ_code;
	}
	public int getStore_code() {
		return Store_code;
	}
	public void setStore_code(int store_code) {
		Store_code = store_code;
	}
	public int getQQ_number() {
		return QQ_number;
	}
	public void setQQ_number(int qQ_number) {
		QQ_number = qQ_number;
	}
	public Boolean getQQ_state() {
		return QQ_state;
	}
	public void setQQ_state(Boolean qQ_state) {
		QQ_state = qQ_state;
	}
	public String getRemark() {
		return Remark;
	}
	public void setRemark(String remark) {
		Remark = remark;
	}
	
}
