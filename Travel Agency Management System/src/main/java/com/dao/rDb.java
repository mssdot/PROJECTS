package com.dao;

public class rDb {
	String car;
	String type;
	int count;
	public rDb(String car, String type, int count) {
		super();
		this.car = car;
		this.type = type;
		this.count = count;
	}
	@Override
	public String toString() {
		return "rDb [car=" + car + ", type=" + type + ", count=" + count + "]";
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
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	

}
