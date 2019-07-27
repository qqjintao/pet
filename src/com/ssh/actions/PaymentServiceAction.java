package com.ssh.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.PaymentServiceDao;
import com.ssh.model.PaymentService;

public class PaymentServiceAction extends ActionSupport{
	private PaymentService paymentService=new PaymentService();
	private	PaymentServiceDao paymentServiceDao=new PaymentServiceDao();
	
	//增删改查
	public String addPaymentService(){
		if(paymentServiceDao.addPaymentService(paymentService)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deletePaymentServiceById(){
		if(paymentServiceDao.deletePaymentServiceById(paymentService.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updatePaymentService(){
		if(paymentServiceDao.updatePaymentService(paymentService)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryPaymentServiceById(){
		if(paymentServiceDao.queryPaymentServiceById(paymentService.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public PaymentService getPaymentService() {
		return paymentService;
	}
	public void setPaymentService(PaymentService paymentService) {
		this.paymentService = paymentService;
	}
	public PaymentServiceDao getPaymentServiceDao() {
		return paymentServiceDao;
	}
	public void setPaymentServiceDao(PaymentServiceDao paymentServiceDao) {
		this.paymentServiceDao = paymentServiceDao;
	}
}
