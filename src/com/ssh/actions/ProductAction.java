package com.ssh.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.ProductDao;
import com.ssh.model.Product;

public class ProductAction extends ActionSupport{
	private Product product=new Product();
	private	ProductDao productDao=new ProductDao();
	
	//增删改查
	public String addProduct(){
		if(productDao.addProduct(product)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteProductById(){
		if(productDao.deleteProductById(product.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateProduct(){
		if(productDao.updateProduct(product)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryProductById(){
		if(productDao.queryProductById(product.getId())!=null){
			product=productDao.queryProductById(product.getId());
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public ProductDao getProductDao() {
		return productDao;
	}
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
}
