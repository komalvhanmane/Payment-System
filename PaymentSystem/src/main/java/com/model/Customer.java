package com.model;

public class Customer {
	private int custId;
	private String fname;
	private String mname;
	private String lname;
	private String email;
	private String phno;
	private String state;
	private int pincode;
	private Account a;
	public Customer(int custId, String fname, String mname, String lname, String email, String phno, String state,
			int pincode) {
		super();
		this.custId = custId;
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.email = email;
		this.phno = phno;
		this.state = state;
		this.pincode = pincode;
		a=null;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public Account getA() {
		return a;
	}
	public void setA(Account a) {
		this.a = a;
	}
	
}
