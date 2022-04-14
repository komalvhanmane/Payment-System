package com.model;

public class PhoneType {
	private String phno;
	private String type;
	public PhoneType(String phno, String type) {
		super();
		this.phno = phno;
		this.type = type;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
