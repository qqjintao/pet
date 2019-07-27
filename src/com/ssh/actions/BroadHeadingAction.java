package com.ssh.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.BroadHeadingDao;
import com.ssh.model.BroadHeading;

public class BroadHeadingAction extends ActionSupport{
	private BroadHeading broadHeading=new BroadHeading();
	private	BroadHeadingDao broadHeadingDao=new BroadHeadingDao();
	
	//增删改查
	public String addBroadHeading(){
		if(broadHeadingDao.addBroadHeading(broadHeading)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteBroadHeadingById(){
		if(broadHeadingDao.deleteBroadHeadingById(broadHeading.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateBroadHeading(){
		if(broadHeadingDao.updateBroadHeading(broadHeading)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryBroadHeadingById(){
		if(broadHeadingDao.queryBroadHeadingById(broadHeading.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public BroadHeading getBroadHeading() {
		return broadHeading;
	}
	public void setBroadHeading(BroadHeading broadHeading) {
		this.broadHeading = broadHeading;
	}
	public BroadHeadingDao getBroadHeadingDao() {
		return broadHeadingDao;
	}
	public void setBroadHeadingDao(BroadHeadingDao broadHeadingDao) {
		this.broadHeadingDao = broadHeadingDao;
	}
}
