package com.demo.pojo;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;
@Component
public class Courses {
	private String Cid;
	private String Tid;
	private String Sid;
	private String Cname;
	private Date Ctime;
	private String Cimage;
	private String Cinfo;
	private String Curl;
	private Species Species;
	private List<Orders> OrdersList;
	private Teachers Teachers;
	private List<Users> UsersList;
	public String getCid() {
		return Cid;
	}
	public void setCid(String cid) {
		Cid = cid;
	}
	public String getTid() {
		return Tid;
	}
	public void setTid(String tid) {
		Tid = tid;
	}
	public String getSid() {
		return Sid;
	}
	public void setSid(String sid) {
		Sid = sid;
	}
	public String getCname() {
		return Cname;
	}
	public void setCname(String cname) {
		Cname = cname;
	}
	public Date getCtime() {
		return Ctime;
	}
	public void setCtime(Date ctime) {
		Ctime = ctime;
	}
	public String getCimage() {
		return Cimage;
	}
	public void setCimage(String cimage) {
		Cimage = cimage;
	}
	public String getCinfo() {
		return Cinfo;
	}
	public void setCinfo(String cinfo) {
		Cinfo = cinfo;
	}
	public String getCurl() {
		return Curl;
	}
	public void setCurl(String curl) {
		Curl = curl;
	}
	public Species getSpecies() {
		return Species;
	}
	public void setSpecies(Species species) {
		Species = species;
	}
	public List<Orders> getOrdersList() {
		return OrdersList;
	}
	public void setOrdersList(List<Orders> ordersList) {
		OrdersList = ordersList;
	}
	public Teachers getTeachers() {
		return Teachers;
	}
	public void setTeachers(Teachers teachers) {
		Teachers = teachers;
	}
	public List<Users> getUsersList() {
		return UsersList;
	}
	public void setUsersList(List<Users> usersList) {
		UsersList = usersList;
	}
	@Override
	public String toString() {
		return "Courses [Cid=" + Cid + ", Tid=" + Tid + ", Sid=" + Sid + ", Cname=" + Cname + ", Ctime=" + Ctime
				+ ", Cimage=" + Cimage + ", Cinfo=" + Cinfo + ", Curl=" + Curl + ", Species=" + Species
				+ ", OrdersList=" + OrdersList + ", Teachers=" + Teachers + ", UsersList=" + UsersList + "]";
	}
	
}
