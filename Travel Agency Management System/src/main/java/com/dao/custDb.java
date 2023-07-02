package com.dao;

public class custDb {
	String name;
	String uname;
	String pwd;
	String pno;
	public custDb(String name, String uname, String pwd, String pno) {
		super();
		this.name = name;
		this.uname = uname;
		this.pwd = pwd;
		this.pno = pno;
	}
	
	@Override
	public String toString() {
		return "custDb [name=" + name + ", uname=" + uname + ", pwd=" + pwd + ", pno=" + pno + "]";
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	

}
