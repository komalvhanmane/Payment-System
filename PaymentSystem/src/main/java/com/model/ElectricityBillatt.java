package com.model;

public class ElectricityBillatt {
	private int cons_nnum;
	private String phno;
	private double amount;
	private String date;
	private int status;
	public ElectricityBillatt(int cons_nnum, String phno, double amount, String date, int status) {
		super();
		this.cons_nnum = cons_nnum;
		this.phno = phno;
		this.amount = amount;
		this.date = date;
		this.status = status;
	}
	public int getCons_nnum() {
		return cons_nnum;
	}
	public void setCons_nnum(int cons_nnum) {
		this.cons_nnum = cons_nnum;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
