package com.demo.pojo;

import java.util.Date;

import org.springframework.stereotype.Component;
@Component
public class Orders {

	private String Oid;
	private String Cid;
	private String Uid;
	private String Oevaul;
	private String Cprice;
	private Date Ocreatetime;
	private String Ostate;
	private Users Users;
	private Courses Courses;
	private Flows Flows;
	public String getOid() {
		return Oid;
	}
	public void setOid(String oid) {
		Oid = oid;
	}
	public String getCid() {
		return Cid;
	}
	public void setCid(String cid) {
		Cid = cid;
	}
	public String getUid() {
		return Uid;
	}
	public void setUid(String uid) {
		Uid = uid;
	}
	public String getOevaul() {
		return Oevaul;
	}
	public void setOevaul(String oevaul) {
		Oevaul = oevaul;
	}
	public String getCprice() {
		return Cprice;
	}
	public void setCprice(String cprice) {
		Cprice = cprice;
	}
	public Date getOcreatetime() {
		return Ocreatetime;
	}
	public void setOcreatetime(Date ocreatetime) {
		Ocreatetime = ocreatetime;
	}
	public String getOstate() {
		return Ostate;
	}
	public void setOstate(String ostate) {
		Ostate = ostate;
	}
	public Users getUsers() {
		return Users;
	}
	public void setUsers(Users users) {
		Users = users;
	}
	public Courses getCourses() {
		return Courses;
	}
	public void setCourses(Courses courses) {
		Courses = courses;
	}
	public Flows getFlows() {
		return Flows;
	}
	public void setFlows(Flows flows) {
		Flows = flows;
	}
	@Override
	public String toString() {
		return "Orders [Oid=" + Oid + ", Cid=" + Cid + ", Uid=" + Uid + ", Oevaul=" + Oevaul + ", Cprice=" + Cprice
				+ ", Ocreatetime=" + Ocreatetime + ", Ostate=" + Ostate + ", Users=" + Users + ", Courses=" + Courses
				+ ", Flows=" + Flows + "]";
	}
}
