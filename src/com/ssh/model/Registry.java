package com.ssh.model;

public class Registry {
	private int id;
	private String Mobile_phone;
	private String Mailbox;
	private String Nickname;
	private String Password;
	public Registry(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMobile_phone() {
		return Mobile_phone;
	}
	public void setMobile_phone(String mobile_phone) {
		Mobile_phone = mobile_phone;
	}
	public String getMailbox() {
		return Mailbox;
	}
	public void setMailbox(String mailbox) {
		Mailbox = mailbox;
	}
	public String getNickname() {
		return Nickname;
	}
	public void setNickname(String nickname) {
		Nickname = nickname;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
}
