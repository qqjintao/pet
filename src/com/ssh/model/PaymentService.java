package com.ssh.model;

public class PaymentService {
	private int id;
	private int Payment_code;
	private String Payment_name;
	public PaymentService(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPayment_code() {
		return Payment_code;
	}
	public void setPayment_code(int payment_code) {
		Payment_code = payment_code;
	}
	public String getPayment_name() {
		return Payment_name;
	}
	public void setPayment_name(String payment_name) {
		Payment_name = payment_name;
	}
	
}
