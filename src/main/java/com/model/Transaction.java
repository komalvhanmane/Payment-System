package com.model;

public class Transaction {
	private int acc1;
	private int acc2;
	private String date;
	private int type;
	private double amount;
	public Transaction(int acc1, int acc2, String date, int type, double amount) {
		super();
		this.acc1 = acc1;
		this.acc2 = acc2;
		this.date = date;
		this.type = type;
		this.amount = amount;
	}
	public int getAcc1() {
		return acc1;
	}
	public void setAcc1(int acc1) {
		this.acc1 = acc1;
	}
	public int getAcc2() {
		return acc2;
	}
	public void setAcc2(int acc2) {
		this.acc2 = acc2;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	
}
