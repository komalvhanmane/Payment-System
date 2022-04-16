package com.model;

import java.util.LinkedList;

public class Bank {
	private String bank_name;
	private int code;
	private String branch;
	private LinkedList<Account> acc;
	
	public Bank(String bank_name, int code, String branch) {
		super();
		this.bank_name = bank_name;
		this.code = code;
		this.branch = branch;
		acc=new LinkedList<>();
	}
	public String getBank_name() {
		return bank_name;
	}
	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	
}
