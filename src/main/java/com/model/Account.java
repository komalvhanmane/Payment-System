package com.model;

public class Account {
	private int pin;
	private int acc_num;
	private double acc_bal;
	private int acc_type;
	private int bank_code;
	public int getBank_code() {
		return bank_code;
	}
	public void setBank_code(int bank_code) {
		this.bank_code = bank_code;
	}
	public Account(int acc_num, double acc_bal, int acc_type,  int pin,int bank_code) {
		super();
		this.acc_num = acc_num;
		this.acc_bal = acc_bal;
		this.acc_type = acc_type;
		this.pin=pin;
		this.bank_code=bank_code;
	}
	public int getPin() {
		return pin;
	}
	public void setPin(int pin) {
		this.pin = pin;
	}
	public int getAcc_num() {
		return acc_num;
	}
	public void setAcc_num(int acc_num) {
		this.acc_num = acc_num;
	}
	public double getAcc_bal() {
		return acc_bal;
	}
	public void setAcc_bal(double acc_bal) {
		this.acc_bal = acc_bal;
	}
	public int getAcc_type() {
		return acc_type;
	}
	public void setAcc_type(int acc_type) {
		this.acc_type = acc_type;
	}
	
}
