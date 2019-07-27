package com.ssh.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.StroeAnnouncementDao;
import com.ssh.model.StroeAnnouncement;

public class StroeAnnouncementAction extends ActionSupport{
	private StroeAnnouncement stroeAnnouncement=new StroeAnnouncement();
	private	StroeAnnouncementDao stroeAnnouncementDao=new StroeAnnouncementDao();
	
	//增删改查
	public String addStroeAnnouncement(){
		if(stroeAnnouncementDao.addStroeAnnouncement(stroeAnnouncement)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteStroeAnnouncementById(){
		if(stroeAnnouncementDao.deleteStroeAnnouncementById(stroeAnnouncement.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateStroeAnnouncement(){
		if(stroeAnnouncementDao.updateStroeAnnouncement(stroeAnnouncement)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryStroeAnnouncementById(){
		if(stroeAnnouncementDao.queryStroeAnnouncementById(stroeAnnouncement.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public StroeAnnouncement getStroeAnnouncement() {
		return stroeAnnouncement;
	}
	public void setStroeAnnouncement(StroeAnnouncement stroeAnnouncement) {
		this.stroeAnnouncement = stroeAnnouncement;
	}
	public StroeAnnouncementDao getStroeAnnouncementDao() {
		return stroeAnnouncementDao;
	}
	public void setStroeAnnouncementDao(StroeAnnouncementDao stroeAnnouncementDao) {
		this.stroeAnnouncementDao = stroeAnnouncementDao;
	}
}
