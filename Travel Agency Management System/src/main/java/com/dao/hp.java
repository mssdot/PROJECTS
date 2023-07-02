package com.dao;

public  class hp {
	  String car="" ;
	  String type="";
	  int dp =0;
	  String bd="";
	  String bt="";
	  String rd="";
	  String rt="";
	  int amt =0;
	  String status="";
	public hp(String car, String type, int dp, String bd, String bt, String rd, String rt, int amt, String status) {
		super();
		this.car = car;
		this.type = type;
		this.dp = dp;
		this.bd = bd;
		this.bt = bt;
		this.rd = rd;
		this.rt = rt;
		this.amt = amt;
		this.status = status;
	}
	@Override
	public String toString() {
		return "hp [car=" + car + ", type=" + type + ", dp=" + dp + ", bd=" + bd + ", bt=" + bt + ", rd=" + rd + ", rt="
				+ rt + ", amt=" + amt + ", status=" + status + "]";
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
	public int getDp() {
		return dp;
	}
	public void setDp(int dp) {
		this.dp = dp;
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
	public int getAmt() {
		return amt;
	}
	public void setAmt(int amt) {
		this.amt = amt;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	   
	
    
}