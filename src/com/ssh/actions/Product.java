package com.ssh.actions;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.mapping.Array;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.ProductDao;
import com.ssh.model.BroadHeading;
import com.ssh.model.Browse_products;
import com.ssh.model.ProductPicture;
import com.ssh.model.Subclass;

public class Product extends ActionSupport{
	private int id;
	private String queryName;
	private float Member_price_a;
	private float Member_price_b;
	private	ProductDao productDao=new ProductDao();
	private ArrayList<Browse_products> browse_products=new ArrayList<Browse_products>();
	public String execute(){
		browse_products=productDao.queryBrowse_products();
		if(browse_products!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//通过大类查询产品
	public String queryProductByBroadHeading_name(){
		browse_products=productDao.queryBrowse_productsByBroadHeading_name(queryName.replace(" ", ""));
		if(browse_products!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//通过小类查询产品
	public String queryProductBySubclass_name(){
		browse_products=productDao.queryBrowse_productsBySubclass_name(queryName.replace(" ", ""));
		if(browse_products!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//通过名称查询产品
	public String queryProductByProduct_name(){
		browse_products=productDao.queryBrowse_productsByProduct_name(queryName.replace(" ", ""));
		if(browse_products!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//通过钱查询产品
	public String queryProductByMember_price(){
		browse_products=productDao.queryBrowse_productsByMember_price(Member_price_a,Member_price_b);
		if(browse_products!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	//通过id查询产品
		public String queryProductByProductId(){
			browse_products=productDao.queryBrowse_productsByProductId(id);
			if(browse_products!=null){
				return SUCCESS;
			}else{
				return INPUT;
			}
		}
	public ProductDao getProductDao() {
		return productDao;
	}
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	public ArrayList<Browse_products> getBrowse_products() {
		return browse_products;
	}
	public void setBrowse_products(ArrayList<Browse_products> browse_products) {
		this.browse_products = browse_products;
	}

	public String getQueryName() {
		return queryName;
	}

	public void setQueryName(String queryName) {
		this.queryName = queryName;
	}
	public float getMember_price_a() {
		return Member_price_a;
	}
	public void setMember_price_a(float member_price_a) {
		Member_price_a = member_price_a;
	}
	public float getMember_price_b() {
		return Member_price_b;
	}
	public void setMember_price_b(float member_price_b) {
		Member_price_b = member_price_b;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
}
