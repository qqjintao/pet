package com.ssh.model;

public class StroeAnnouncement {
	private int id;
	private int Announcement_code;
	private int Store_code;
	private String Announcement_tile;
	private String Announcement_content;
	private String Announcement_time;
	private Boolean Announcement_state;
	public StroeAnnouncement(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAnnouncement_code() {
		return Announcement_code;
	}
	public void setAnnouncement_code(int announcement_code) {
		Announcement_code = announcement_code;
	}
	public int getStore_code() {
		return Store_code;
	}
	public void setStore_code(int store_code) {
		Store_code = store_code;
	}
	public String getAnnouncement_tile() {
		return Announcement_tile;
	}
	public void setAnnouncement_tile(String announcement_tile) {
		Announcement_tile = announcement_tile;
	}
	public String getAnnouncement_content() {
		return Announcement_content;
	}
	public void setAnnouncement_content(String announcement_content) {
		Announcement_content = announcement_content;
	}
	public String getAnnouncement_time() {
		return Announcement_time;
	}
	public void setAnnouncement_time(String announcement_time) {
		Announcement_time = announcement_time;
	}
	public Boolean getAnnouncement_state() {
		return Announcement_state;
	}
	public void setAnnouncement_state(Boolean announcement_state) {
		Announcement_state = announcement_state;
	}

	
}
