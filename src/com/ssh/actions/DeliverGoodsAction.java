package com.ssh.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.DeliverGoodsDao;
import com.ssh.model.DeliverGoods;

public class DeliverGoodsAction extends ActionSupport{
	private DeliverGoods deliverGoods=new DeliverGoods();
	private	DeliverGoodsDao deliverGoodsDao=new DeliverGoodsDao();
	
	//增删改查
	public String addDeliverGoods(){
		if(deliverGoodsDao.addDeliverGoods(deliverGoods)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deleteDeliverGoodsById(){
		if(deliverGoodsDao.deleteDeliverGoodsById(deliverGoods.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updateDeliverGoods(){
		if(deliverGoodsDao.updateDeliverGoods(deliverGoods)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryDeliverGoodsById(){
		if(deliverGoodsDao.queryDeliverGoodsById(deliverGoods.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public DeliverGoods getDeliverGoods() {
		return deliverGoods;
	}
	public void setDeliverGoods(DeliverGoods deliverGoods) {
		this.deliverGoods = deliverGoods;
	}
	public DeliverGoodsDao getDeliverGoodsDao() {
		return deliverGoodsDao;
	}
	public void setDeliverGoodsDao(DeliverGoodsDao deliverGoodsDao) {
		this.deliverGoodsDao = deliverGoodsDao;
	}
}
