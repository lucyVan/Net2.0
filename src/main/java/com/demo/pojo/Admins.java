package com.demo.pojo;

import org.springframework.stereotype.Component;

@Component
public class Admins {
	private String Aid;
	private String Aname;
	private String Apassword;
	public String getAid() {
		return Aid;
	}
	public void setAid(String aid) {
		Aid = aid;
	}
	public String getAname() {
		return Aname;
	}
	public void setAname(String aname) {
		Aname = aname;
	}
	public String getApassword() {
		return Apassword;
	}
	public void setApassword(String apassword) {
		Apassword = apassword;
	}
	@Override
	public String toString() {
		return "Admins [Aid=" + Aid + ", Aname=" + Aname + ", Apassword=" + Apassword + "]";
	}
	
}
