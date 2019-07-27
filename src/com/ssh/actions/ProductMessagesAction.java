package com.ssh.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.ProductMessagesDao;
import com.ssh.model.ProductMessages;

public class ProductMessagesAction extends ActionSupport{
	private ProductMessages productMessages=new ProductMessages();
	private	ProductMessagesDao productMessagesDao=new ProductMessagesDao();
	
	//增删改查
	public String addProductMessages(){
		if(productMessagesDao.addProductMessages(productMessages)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteProductMessagesById(){
		if(productMessagesDao.deleteProductMessagesById(productMessages.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateProductMessages(){
		if(productMessagesDao.updateProductMessages(productMessages)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryProductMessagesById(){
		if(productMessagesDao.queryProductMessagesById(productMessages.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public ProductMessages getProductMessages() {
		return productMessages;
	}
	public void setProductMessages(ProductMessages productMessages) {
		this.productMessages = productMessages;
	}
	public ProductMessagesDao getProductMessagesDao() {
		return productMessagesDao;
	}
	public void setProductMessagesDao(ProductMessagesDao productMessagesDao) {
		this.productMessagesDao = productMessagesDao;
	}
}
