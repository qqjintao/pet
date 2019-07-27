package com.ssh.actions;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.common.HibernateSessionFactory;
import com.ssh.dao.IndentProductDao;
import com.ssh.model.IndentProduct;
import com.ssh.model.IndentProductView;
import com.ssh.model.ProductMessagesView;

public class IndentProductAction extends ActionSupport{
	private IndentProduct indentProduct=new IndentProduct();
	private	IndentProductDao indentProductDao=new IndentProductDao();
	
	//增删改查
	public String addIndentProduct(){
		if(indentProductDao.addIndentProduct(indentProduct)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteIndentProductById(){
		if(indentProductDao.deleteIndentProductById(indentProduct.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateIndentProduct(){
		if(indentProductDao.updateIndentProduct(indentProduct)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryIndentProductById(){
		if(indentProductDao.queryIndentProductById(indentProduct.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public IndentProduct getIndentProduct() {
		return indentProduct;
	}
	public void setIndentProduct(IndentProduct indentProduct) {
		this.indentProduct = indentProduct;
	}
	public IndentProductDao getIndentProductDao() {
		return indentProductDao;
	}
	public void setIndentProductDao(IndentProductDao indentProductDao) {
		this.indentProductDao = indentProductDao;
	}
}
