package com.ssh.actions;

import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.business.GetDateTime;
import com.ssh.dao.ForumDao;
import com.ssh.dao.ForumMessagesDao;
import com.ssh.dao.Master_tableDao;
import com.ssh.dao.SubclassDao;
import com.ssh.model.Forum;
import com.ssh.model.ForumMessages;
import com.ssh.model.ForumView;
import com.ssh.model.Master_table;
import com.ssh.model.Registry;
import com.ssh.model.Subclass;

public class ForumAction extends ActionSupport {
	private ArrayList<ForumView> forums;
	private int forumsum;
	private String date;
	private String week;
	private ArrayList<ForumMessages> forumMessageslist;
	private Registry registry = new Registry();
	private ArrayList<Subclass> subclasslist;
	private Master_table master_table = new Master_table();
	private Forum forum = new Forum();
	private ForumDao forumDao = new ForumDao();
	private SubclassDao subclassDao=new SubclassDao();
	private Master_tableDao master_tableDao = new Master_tableDao();
	private ForumMessages forumMessages = new ForumMessages();
	private ForumMessagesDao forumMessagesDao = new ForumMessagesDao();

	// 增删改查
	public String addForum() {
		if (forumDao.addForum(forum) > 0) {
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public String deleteForumById() {
		if (forumDao.deleteForumById(forum.getId())) {
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public String updateForum() {
		if (forumDao.updateForum(forum)) {
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public String queryForumById() {
		if (forumDao.queryForumById(forum.getId()) != null) {
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	// 显示论坛
	public String execute() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if (registry == null) {
			return INPUT;
		}
		date=GetDateTime.getStringDateShort();
		week=GetDateTime.getWeekOfDate(new Date());
		subclasslist=subclassDao.querySubclassList();
		forumsum = forumDao.queryForumsumbyMobile_phone(registry.getMobile_phone());
		master_table = master_tableDao.queryMaster_tableById(registry.getMobile_phone());
		forums = forumDao.queryForumList();
		forumMessageslist = forumMessagesDao.queryForumMessagesList();
		for(int i=0;i<forumMessageslist.size();i++){
			String Mobile_phone1 = forumMessageslist.get(i).getMobile_phone().substring(0, 3);
			String Mobile_phone2 = forumMessageslist.get(i).getMobile_phone().substring(forumMessageslist.get(i).getMobile_phone().length() - 4,
					forumMessageslist.get(i).getMobile_phone().length());
			forumMessageslist.get(i).setMobile_phone(Mobile_phone1 + "****" + Mobile_phone2);
		}
		return SUCCESS;
	}
	public String addNewForum() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if (registry == null) {
			return INPUT;
		}
		forum.setMobile_phone(registry.getMobile_phone());
		forum.setForumMessages_time(GetDateTime.getStringDate());
		forum.setForum_code(forumDao.queryForumByMaxForum_code()+1);
		if (forumDao.addForum(forum) > 0) {
			return "addsuccess";
		} else {
			return "addfalse";
		}
	}
	//添加留言
	public String addNewForumMessages() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		registry = (Registry) session.get("registry");
		if (registry == null) {
			return INPUT;
		}
		forumMessages.setMobile_phone(registry.getMobile_phone());
		forumMessages.setForumMessages_time(GetDateTime.getStringDate());
		forumMessages.setForumMessages_code(forumMessagesDao.queryForumMessagesByMaxForumMessages_code()+1);
		if (forumMessagesDao.addForumMessages(forumMessages) > 0) {
			return "addsuccess";
		} else {
			return "addfalse";
		}
	}
	
	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Master_table getMaster_table() {
		return master_table;
	}

	public void setMaster_table(Master_table master_table) {
		this.master_table = master_table;
	}
	
	public Master_tableDao getMaster_tableDao() {
		return master_tableDao;
	}

	public void setMaster_tableDao(Master_tableDao master_tableDao) {
		this.master_tableDao = master_tableDao;
	}

	public Forum getForum() {
		return forum;
	}

	public void setForum(Forum forum) {
		this.forum = forum;
	}

	public ForumDao getForumDao() {
		return forumDao;
	}

	public void setForumDao(ForumDao forumDao) {
		this.forumDao = forumDao;
	}
	public ArrayList<ForumView> getForums() {
		return forums;
	}

	public void setForums(ArrayList<ForumView> forums) {
		this.forums = forums;
	}

	public int getForumsum() {
		return forumsum;
	}

	public void setForumsum(int forumsum) {
		this.forumsum = forumsum;
	}

	public ArrayList<Subclass> getSubclasslist() {
		return subclasslist;
	}

	public void setSubclasslist(ArrayList<Subclass> subclasslist) {
		this.subclasslist = subclasslist;
	}

	public SubclassDao getSubclassDao() {
		return subclassDao;
	}

	public void setSubclassDao(SubclassDao subclassDao) {
		this.subclassDao = subclassDao;
	}

	public ArrayList<ForumMessages> getForumMessageslist() {
		return forumMessageslist;
	}

	public void setForumMessageslist(ArrayList<ForumMessages> forumMessageslist) {
		this.forumMessageslist = forumMessageslist;
	}

	public Registry getRegistry() {
		return registry;
	}

	public void setRegistry(Registry registry) {
		this.registry = registry;
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
