package com.ssh.model;

public class ProductDetils {
	private int ProductId;//产品id
	private int ProductSuitId;//套装id
	private String ProductProduct_name;//产品名称
	private String Store_name;//店铺名称
	private float Member_price;//会员价格
	private float Market_price;//市场价格
	private float Product_tax;//税
	private float Integral;//可得积分
	private float Quantity;//数量
	private float Product_weight;//套装单件重量
	private String End_time;//止售时间
	private boolean Discount_coupon;//是否支持优惠券
	private String ProductSuitProduct_name;//套装
	private String ProductSuitProduct_until;//产品促销
	private String ProductProduct_until;//产品始发城市
	private String Product_introduce;//商品介绍
	public int getProductId() {
		return ProductId;
	}
	public void setProductId(int productId) {
		ProductId = productId;
	}
	public int getProductSuitId() {
		return ProductSuitId;
	}
	public void setProductSuitId(int productSuitId) {
		ProductSuitId = productSuitId;
	}
	public String getProductProduct_name() {
		return ProductProduct_name;
	}
	public void setProductProduct_name(String productProduct_name) {
		ProductProduct_name = productProduct_name;
	}
	public String getStore_name() {
		return Store_name;
	}
	public void setStore_name(String store_name) {
		Store_name = store_name;
	}
	public float getMember_price() {
		return Member_price;
	}
	public void setMember_price(float member_price) {
		Member_price = member_price;
	}
	public float getMarket_price() {
		return Market_price;
	}
	public void setMarket_price(float market_price) {
		Market_price = market_price;
	}
	public float getProduct_tax() {
		return Product_tax;
	}
	public void setProduct_tax(float product_tax) {
		Product_tax = product_tax;
	}
	public float getIntegral() {
		return Integral;
	}
	public void setIntegral(float integral) {
		Integral = integral;
	}
	public float getQuantity() {
		return Quantity;
	}
	public void setQuantity(float quantity) {
		Quantity = quantity;
	}
	public float getProduct_weight() {
		return Product_weight;
	}
	public void setProduct_weight(float product_weight) {
		Product_weight = product_weight;
	}
	public String getEnd_time() {
		return End_time;
	}
	public void setEnd_time(String end_time) {
		End_time = end_time;
	}
	public boolean isDiscount_coupon() {
		return Discount_coupon;
	}
	public void setDiscount_coupon(boolean discount_coupon) {
		Discount_coupon = discount_coupon;
	}
	public String getProductSuitProduct_name() {
		return ProductSuitProduct_name;
	}
	public void setProductSuitProduct_name(String productSuitProduct_name) {
		ProductSuitProduct_name = productSuitProduct_name;
	}
	public String getProductSuitProduct_until() {
		return ProductSuitProduct_until;
	}
	public void setProductSuitProduct_until(String productSuitProduct_until) {
		ProductSuitProduct_until = productSuitProduct_until;
	}
	public String getProductProduct_until() {
		return ProductProduct_until;
	}
	public void setProductProduct_until(String productProduct_until) {
		ProductProduct_until = productProduct_until;
	}
	public String getProduct_introduce() {
		return Product_introduce;
	}
	public void setProduct_introduce(String product_introduce) {
		Product_introduce = product_introduce;
	}

}
