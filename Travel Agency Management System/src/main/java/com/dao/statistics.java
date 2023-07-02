package com.dao;

public class statistics {
	
	String car;
	String type;
	int price;
	int exp;
	int rev;
	int pro;
	public statistics(String car, String type, int price, int exp, int rev, int pro) {
		 
		this.car = car;
		this.type = type;
		this.price = price;
		this.exp = exp;
		this.rev = rev;
		this.pro = pro;
	}
	@Override
	public String toString() {
		return "statistics [car=" + car + ", type=" + type + ", price=" + price + ", exp=" + exp + ", rev=" + rev
				+ ", pro=" + pro + "]";
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
	public int getPro() {
		return pro;
	}
	public void setPro(int pro) {
		this.pro = pro;
	}
	 
	 
	
	
	

}
