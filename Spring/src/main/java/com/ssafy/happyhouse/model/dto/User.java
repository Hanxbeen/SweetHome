package com.ssafy.happyhouse.model.dto;

public class User {
	String userid;
	String pass;
	String name;
	String number;
	String address;
	String roll;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRoll() {
		return roll;
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", pass=" + pass + ", name=" + name + ", number=" + number + ", address=" + address
				+ ", roll=" + roll + "]";
	}
	
	
}
