package com.dao;

public class bDb {
	
	String cust;
	String car;
	String type;
	int damt ;
	String  bd;
	String  bt;
	String  rd;
	String  rt;
	String  ta;
	String  status;
	public bDb(String cust, String car, String type, int damt, String bd, String bt, String rd, String rt, String ta,
			String status) {
		super();
		this.cust = cust;
		this.car = car;
		this.type = type;
		this.damt = damt;
		this.bd = bd;
		this.bt = bt;
		this.rd = rd;
		this.rt = rt;
		this.ta = ta;
		this.status = status;
	}
	@Override
	public String toString() {
		return "bDb [cust=" + cust + ", car=" + car + ", type=" + type + ", damt=" + damt + ", bd=" + bd + ", bt=" + bt
				+ ", rd=" + rd + ", rt=" + rt + ", ta=" + ta + ", status=" + status + "]";
	}
	public String getCust() {
		return cust;
	}
	public void setCust(String cust) {
		this.cust = cust;
	}
	public String getCar() {
		return car;
	}
	public void setCar(String car) {
		this.car = car;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getDamt() {
		return damt;
	}
	public void setDamt(int damt) {
		this.damt = damt;
	}
	public String getBd() {
		return bd;
	}
	public void setBd(String bd) {
		this.bd = bd;
	}
	public String getBt() {
		return bt;
	}
	public void setBt(String bt) {
		this.bt = bt;
	}
	public String getRd() {
		return rd;
	}
	public void setRd(String rd) {
		this.rd = rd;
	}
	public String getRt() {
		return rt;
	}
	public void setRt(String rt) {
		this.rt = rt;
	}
	public String getTa() {
		return ta;
	}
	public void setTa(String ta) {
		this.ta = ta;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
}
