package com.dao;

public class chargeDb {
	
	String car;
	String type;
	int dep;
	int mc;
	int cpk ;
	int cph;
	public chargeDb(String car, String type, int dep, int mc, int cpk, int cph) {
		super();
		this.car = car;
		this.type = type;
		this.dep = dep;
		this.mc = mc;
		this.cpk = cpk;
		this.cph = cph;
	}
	@Override
	public String toString() {
		return "chargeDb [car=" + car + ", type=" + type + ", dep=" + dep + ", mc=" + mc + ", cpk=" + cpk + ", cph="
				+ cph + "]";
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
	public int getDep() {
		return dep;
	}
	public void setDep(int dep) {
		this.dep = dep;
	}
	public int getMc() {
		return mc;
	}
	public void setMc(int mc) {
		this.mc = mc;
	}
	public int getCpk() {
		return cpk;
	}
	public void setCpk(int cpk) {
		this.cpk = cpk;
	}
	public int getCph() {
		return cph;
	}
	public void setCph(int cph) {
		this.cph = cph;
	}
	
	

}
