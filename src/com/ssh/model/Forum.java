package com.ssh.model;

public class Forum {
	private int id;
	private int Forum_code;
	private String Mobile_phone;
	private int Subclass_code;
	private String ForumMessages_title;
	private String ForumMessages_context;
	private String ForumMessages_time;
	public Forum(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getForum_code() {
		return Forum_code;
	}
	public void setForum_code(int forum_code) {
		Forum_code = forum_code;
	}
	public String getMobile_phone() {
		return Mobile_phone;
	}
	public void setMobile_phone(String mobile_phone) {
		Mobile_phone = mobile_phone;
	}
	public int getSubclass_code() {
		return Subclass_code;
	}
	public void setSubclass_code(int subclass_code) {
		Subclass_code = subclass_code;
	}
	public String getForumMessages_title() {
		return ForumMessages_title;
	}
	public void setForumMessages_title(String forumMessages_title) {
		ForumMessages_title = forumMessages_title;
	}
	public String getForumMessages_context() {
		return ForumMessages_context;
	}
	public void setForumMessages_context(String forumMessages_context) {
		ForumMessages_context = forumMessages_context;
	}
	public String getForumMessages_time() {
		return ForumMessages_time;
	}
	public void setForumMessages_time(String forumMessages_time) {
		ForumMessages_time = forumMessages_time;
	}	
}
