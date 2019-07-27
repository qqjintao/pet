package com.ssh.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.ProductPictureDao;
import com.ssh.model.ProductPicture;

public class ProductPictureAction extends ActionSupport{
	private ProductPicture productPicture=new ProductPicture();
	private	ProductPictureDao productPictureDao=new ProductPictureDao();
	
	//增删改查
	public String addProductPicture(){
		if(productPictureDao.addProductPicture(productPicture)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteProductPictureById(){
		if(productPictureDao.deleteProductPictureById(productPicture.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateProductPicture(){
		if(productPictureDao.updateProductPicture(productPicture)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryProductPictureById(){
		if(productPictureDao.queryProductPictureById(productPicture.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public ProductPicture getProductPicture() {
		return productPicture;
	}
	public void setProductPicture(ProductPicture productPicture) {
		this.productPicture = productPicture;
	}
	public ProductPictureDao getProductPictureDao() {
		return productPictureDao;
	}
	public void setProductPictureDao(ProductPictureDao productPictureDao) {
		this.productPictureDao = productPictureDao;
	}
}
