package com.demo.pojo;

import org.springframework.stereotype.Component;

@Component
public class Learns {
	
	private String Lid;
	private String Cid;
	private String Uid;
	public String getLid() {
		return Lid;
	}
	public void setLid(String lid) {
		Lid = lid;
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
	private Courses Courses;
	private Users Users;
	

	public Courses getCourses() {
		return Courses;
	}
	public void setCourses(Courses courses) {
		Courses = courses;
	}
	public Users getUsers() {
		return Users;
	}
	public void setUsers(Users users) {
		Users = users;
	}
	@Override
	public String toString() {
		return "Learns [Lid=" + Lid + ", Cid=" + Cid + ", Uid=" + Uid + ", Courses=" + Courses + ", Users=" + Users
				+ "]";
	}
	
	
}
