package com.ssh.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.PostalServiceDao;
import com.ssh.model.PostalService;

public class PostalServiceAction extends ActionSupport{
	private PostalService postalService=new PostalService();
	private	PostalServiceDao postalServiceDao=new PostalServiceDao();
	
	//增删改查
	public String addPostalService(){
		if(postalServiceDao.addPostalService(postalService)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deletePostalServiceById(){
		if(postalServiceDao.deletePostalServiceById(postalService.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updatePostalService(){
		if(postalServiceDao.updatePostalService(postalService)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryPostalServiceById(){
		if(postalServiceDao.queryPostalServiceById(postalService.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public PostalService getPostalService() {
		return postalService;
	}
	public void setPostalService(PostalService postalService) {
		this.postalService = postalService;
	}
	public PostalServiceDao getPostalServiceDao() {
		return postalServiceDao;
	}
	public void setPostalServiceDao(PostalServiceDao postalServiceDao) {
		this.postalServiceDao = postalServiceDao;
	}
}
