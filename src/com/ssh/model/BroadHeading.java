package com.ssh.model;

public class BroadHeading {
	private int id;
	private int BroadHeading_code;
	private String BroadHeading_name;
	public BroadHeading(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBroadHeading_code() {
		return BroadHeading_code;
	}
	public void setBroadHeading_code(int broadHeading_code) {
		BroadHeading_code = broadHeading_code;
	}
	public String getBroadHeading_name() {
		return BroadHeading_name;
	}
	public void setBroadHeading_name(String broadHeading_name) {
		BroadHeading_name = broadHeading_name;
	}	
}
