package com.ssh.model;

public class Finance {
	private int id;
	private String Mobile_phone;
	private float Balance;
	private String Payment_code;
	private int Integral;
	private int Discount_coupon;
	public Finance(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMobile_phone() {
		return Mobile_phone;
	}
	public void setMobile_phone(String mobile_phone) {
		Mobile_phone = mobile_phone;
	}
	public float getBalance() {
		return Balance;
	}
	public void setBalance(float balance) {
		Balance = balance;
	}
	public String getPayment_code() {
		return Payment_code;
	}
	public void setPayment_code(String payment_code) {
		Payment_code = payment_code;
	}
	public int getIntegral() {
		return Integral;
	}
	public void setIntegral(int integral) {
		Integral = integral;
	}
	public int getDiscount_coupon() {
		return Discount_coupon;
	}
	public void setDiscount_coupon(int discount_coupon) {
		Discount_coupon = discount_coupon;
	}
	
}
