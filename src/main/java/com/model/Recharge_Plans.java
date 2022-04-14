package com.model;

public class Recharge_Plans {
	private int id;
	private double price;
	private String calls;
	private int net;
	private String sms;
	public Recharge_Plans(int id, double price, String calls, int net, String sms) {
		super();
		this.id = id;
		this.price = price;
		this.calls = calls;
		this.net = net;
		this.sms = sms;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getCalls() {
		return calls;
	}
	public void setCalls(String calls) {
		this.calls = calls;
	}
	public int getNet() {
		return net;
	}
	public void setNet(int net) {
		this.net = net;
	}
	public String getSms() {
		return sms;
	}
	public void setSms(String sms) {
		this.sms = sms;
	}
	
}
