package com.dao;

public class carDb {

	String car;
	String type;
	int price;
	int total;
	int avail;
	int repair;
	int rout;
	int exp;
	int rev;
	int tc;
	int pro;
	public carDb(String car, String type, int price, int total, int avail, int repair, int rout, int exp, int rev,
			int tc, int pro) {
		super();
		this.car = car;
		this.type = type;
		this.price = price;
		this.total = total;
		this.avail = avail;
		this.repair = repair;
		this.rout = rout;
		this.exp = exp;
		this.rev = rev;
		this.tc = tc;
		this.pro = pro;
	}
	@Override
	public String toString() {
		return "cardb [car=" + car + ", type=" + type + ", price=" + price + ", total=" + total + ", avail=" + avail
				+ ", repair=" + repair + ", rout=" + rout + ", exp=" + exp + ", rev=" + rev + ", tc=" + tc + ", pro="
				+ pro + "]";
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getAvail() {
		return avail;
	}
	public void setAvail(int avail) {
		this.avail = avail;
	}
	public int getRepair() {
		return repair;
	}
	public void setRepair(int repair) {
		this.repair = repair;
	}
	public int getRout() {
		return rout;
	}
	public void setRout(int rout) {
		this.rout = rout;
	}
	public int getExp() {
		return exp;
	}
	public void setExp(int exp) {
		this.exp = exp;
	}
	public int getRev() {
		return rev;
	}
	public void setRev(int rev) {
		this.rev = rev;
	}
	public int getTc() {
		return tc;
	}
	public void setTc(int tc) {
		this.tc = tc;
	}
	public int getPro() {
		return pro;
	}
	public void setPro(int pro) {
		this.pro = pro;
	}
	
	
}
