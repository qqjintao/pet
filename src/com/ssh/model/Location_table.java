package com.ssh.model;

public class Location_table {
	private int id;
	private String Mobile_phone;
	private String Name;
	private String Province;
	private String City;
	private String Street;
	private String Phone;
	private String Fixedline_telephone;
	private int Zip_code;
	private int Address_code;

	public Location_table() {

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

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getProvince() {
		return Province;
	}

	public void setProvince(String province) {
		Province = province;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getStreet() {
		return Street;
	}

	public void setStreet(String street) {
		Street = street;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getFixedline_telephone() {
		return Fixedline_telephone;
	}

	public void setFixedline_telephone(String fixedline_telephone) {
		Fixedline_telephone = fixedline_telephone;
	}

	public int getZip_code() {
		return Zip_code;
	}

	public void setZip_code(int zip_code) {
		Zip_code = zip_code;
	}

	public int getAddress_code() {
		return Address_code;
	}

	public void setAddress_code(int address_code) {
		Address_code = address_code;
	}
}
