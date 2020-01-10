package com.demo.pojo;

import org.springframework.stereotype.Component;

@Component
public class Receivers {

	private String Rid;
	private String Uid;
	private String Rname;
	private String Rtel;
	private String Rprovince;
	private String Rcity;
	private String Rdistrict;
	private String Radress;
	private Users Users;
	public String getRid() {
		return Rid;
	}
	public void setRid(String rid) {
		Rid = rid;
	}
	public String getUid() {
		return Uid;
	}
	public void setUid(String uid) {
		Uid = uid;
	}
	public String getRname() {
		return Rname;
	}
	public void setRname(String rname) {
		Rname = rname;
	}
	public String getRtel() {
		return Rtel;
	}
	public void setRtel(String rtel) {
		Rtel = rtel;
	}
	public String getRprovince() {
		return Rprovince;
	}
	public void setRprovince(String rprovince) {
		Rprovince = rprovince;
	}
	public String getRcity() {
		return Rcity;
	}
	public void setRcity(String rcity) {
		Rcity = rcity;
	}
	public String getRdistrict() {
		return Rdistrict;
	}
	public void setRdistrict(String rdistrict) {
		Rdistrict = rdistrict;
	}
	public String getRadress() {
		return Radress;
	}
	public void setRadress(String radress) {
		Radress = radress;
	}
	public Users getUsers() {
		return Users;
	}
	public void setUsers(Users users) {
		Users = users;
	}
	@Override
	public String toString() {
		return "Receivers [Rid=" + Rid + ", Uid=" + Uid + ", Rname=" + Rname + ", Rtel=" + Rtel + ", Rprovince="
				+ Rprovince + ", Rcity=" + Rcity + ", Rdistrict=" + Rdistrict + ", Radress=" + Radress + ", Users="
				+ Users + "]";
	}
	
}
