package com.ssafy.happyhouse.model.dto;

public class Answer {
	private int noa;
	private int noq;
	private String userid;
	private String name;
	private String text;
	private String regDate;
	
	public int getNoa() {
		return noa;
	}
	public void setNoa(int noa) {
		this.noa = noa;
	}
	public int getNoq() {
		return noq;
	}
	public void setNoq(int noq) {
		this.noq = noq;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	@Override
	public String toString() {
		return "Answer [noa=" + noa + ", noq=" + noq + ", userid=" + userid + ", name=" + name + ", text=" + text
				+ ", regDate=" + regDate + "]";
	}

	
}
