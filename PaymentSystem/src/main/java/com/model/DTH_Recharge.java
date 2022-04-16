package com.model;

public class DTH_Recharge {
	private String sid;
	private String type;
	
	public DTH_Recharge(String sid, String type) {
		super();
		this.sid = sid;
		this.type =type;
	}
	
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
