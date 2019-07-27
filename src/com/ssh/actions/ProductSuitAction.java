package com.ssh.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.ProductSuitDao;
import com.ssh.model.ProductSuit;

public class ProductSuitAction extends ActionSupport{
	private ProductSuit productSuit=new ProductSuit();
	private	ProductSuitDao productSuitDao=new ProductSuitDao();
	//增删改查
		public String addProductSuit(){
			if(productSuitDao.addProductSuit(productSuit)>0){
				return SUCCESS;
			}else{
				return INPUT;
			}
		}
		public String deleteProductSuitById(){
			if(productSuitDao.deleteProductSuitById(productSuit.getId())){
				return SUCCESS;
			}else{
				return INPUT;
			}
		}
		public String updateProductSuit(){
			if(productSuitDao.updateProductSuit(productSuit)){
				return SUCCESS;
			}else{
				return INPUT;
			}
		}
		public String queryProductSuitById(){
			if(productSuitDao.queryProductSuitById(productSuit.getId())!=null){
				return SUCCESS;
			}else{
				return INPUT;
			}
		}
}
