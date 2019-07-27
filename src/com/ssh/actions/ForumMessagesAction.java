package com.ssh.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.ForumMessagesDao;
import com.ssh.model.ForumMessages;

public class ForumMessagesAction extends ActionSupport{
	private ForumMessages forumMessages=new ForumMessages();
	private	ForumMessagesDao forumMessagesDao=new ForumMessagesDao();
	
	//增删改查
	public String addForumMessages(){
		if(forumMessagesDao.addForumMessages(forumMessages)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteForumMessagesById(){
		if(forumMessagesDao.deleteForumMessagesById(forumMessages.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateForumMessages(){
		if(forumMessagesDao.updateForumMessages(forumMessages)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryForumMessagesById(){
		if(forumMessagesDao.queryForumMessagesById(forumMessages.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public ForumMessages getForumMessages() {
		return forumMessages;
	}
	public void setForumMessages(ForumMessages forumMessages) {
		this.forumMessages = forumMessages;
	}
	public ForumMessagesDao getForumMessagesDao() {
		return forumMessagesDao;
	}
	public void setForumMessagesDao(ForumMessagesDao forumMessagesDao) {
		this.forumMessagesDao = forumMessagesDao;
	}
}
