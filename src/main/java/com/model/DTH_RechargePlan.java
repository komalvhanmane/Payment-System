package com.model;

public class DTH_RechargePlan {
	
	private int id;
	private int validity;
	private double price;
	
	public DTH_RechargePlan(int id, int validity, double price) {
		super();
		this.id = id;
		this.validity = validity;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getValidity() {
		return validity;
	}
	public void setValidity(int validity) {
		this.validity = validity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
}
