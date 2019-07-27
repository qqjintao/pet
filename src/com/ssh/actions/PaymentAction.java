package com.ssh.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.PaymentDao;
import com.ssh.model.Payment;

public class PaymentAction extends ActionSupport{
	private Payment payment=new Payment();
	private	PaymentDao paymentDao=new PaymentDao();
	
	//增删改查
	public String addPayment(){
		if(paymentDao.addPayment(payment)>0){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String deletePaymentById(){
		if(paymentDao.deletePaymentById(payment.getId())){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String updatePayment(){
		if(paymentDao.updatePayment(payment)){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String queryPaymentById(){
		if(paymentDao.queryPaymentById(payment.getId())!=null){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public Payment getPayment() {
		return payment;
	}
	public void setPayment(Payment payment) {
		this.payment = payment;
	}
	public PaymentDao getPaymentDao() {
		return paymentDao;
	}
	public void setPaymentDao(PaymentDao paymentDao) {
		this.paymentDao = paymentDao;
	}
}
