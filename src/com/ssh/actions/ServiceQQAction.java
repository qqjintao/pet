package com.ssh.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.ServiceQQDao;
import com.ssh.model.ServiceQQ;

public class ServiceQQAction extends ActionSupport{
	private ServiceQQ serviceQQ=new ServiceQQ();
	private	ServiceQQDao serviceQQDao=new ServiceQQDao();
	
	//增删改查
	public String addServiceQQ(){
		if(serviceQQDao.addServiceQQ(serviceQQ)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteServiceQQById(){
		if(serviceQQDao.deleteServiceQQById(serviceQQ.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateServiceQQ(){
		if(serviceQQDao.updateServiceQQ(serviceQQ)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryServiceQQById(){
		if(serviceQQDao.queryServiceQQById(serviceQQ.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public ServiceQQ getServiceQQ() {
		return serviceQQ;
	}
	public void setServiceQQ(ServiceQQ serviceQQ) {
		this.serviceQQ = serviceQQ;
	}
	public ServiceQQDao getServiceQQDao() {
		return serviceQQDao;
	}
	public void setServiceQQDao(ServiceQQDao serviceQQDao) {
		this.serviceQQDao = serviceQQDao;
	}
}
