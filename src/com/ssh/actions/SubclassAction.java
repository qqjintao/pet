package com.ssh.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.SubclassDao;
import com.ssh.model.Subclass;

public class SubclassAction extends ActionSupport{
	private Subclass subclass=new Subclass();
	private	SubclassDao subclassDao=new SubclassDao();
	
	//增删改查
	public String addSubclass(){
		if(subclassDao.addSubclass(subclass)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteSubclassById(){
		if(subclassDao.deleteSubclassById(subclass.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateSubclass(){
		if(subclassDao.updateSubclass(subclass)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String querySubclassById(){
		if(subclassDao.querySubclassById(subclass.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public Subclass getSubclass() {
		return subclass;
	}
	public void setSubclass(Subclass subclass) {
		this.subclass = subclass;
	}
	public SubclassDao getSubclassDao() {
		return subclassDao;
	}
	public void setSubclassDao(SubclassDao subclassDao) {
		this.subclassDao = subclassDao;
	}
}
