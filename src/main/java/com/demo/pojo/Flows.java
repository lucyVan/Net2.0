package com.demo.pojo;

import org.springframework.stereotype.Component;

@Component
public class Flows {
	private String Fid;
	private String Oid;
	private String Fprovince;
	private String Fcity;
	private String Fdistrict;
	private String Fadress;
	private Orders Orders;
	public String getFid() {
		return Fid;
	}
	public void setFid(String fid) {
		Fid = fid;
	}
	public String getOid() {
		return Oid;
	}
	public void setOid(String oid) {
		Oid = oid;
	}
	public String getFprovince() {
		return Fprovince;
	}
	public void setFprovince(String fprovince) {
		Fprovince = fprovince;
	}
	public String getFcity() {
		return Fcity;
	}
	public void setFcity(String fcity) {
		Fcity = fcity;
	}
	public String getFdistrict() {
		return Fdistrict;
	}
	public void setFdistrict(String fdistrict) {
		Fdistrict = fdistrict;
	}
	public String getFadress() {
		return Fadress;
	}
	public void setFadress(String fadress) {
		Fadress = fadress;
	}
	public Orders getOrders() {
		return Orders;
	}
	public void setOrders(Orders orders) {
		Orders = orders;
	}
	@Override
	public String toString() {
		return "Flows [Fid=" + Fid + ", Oid=" + Oid + ", Fprovince=" + Fprovince + ", Fcity=" + Fcity + ", Fdistrict="
				+ Fdistrict + ", Fadress=" + Fadress + ", Orders=" + Orders + "]";
	}
	
}
