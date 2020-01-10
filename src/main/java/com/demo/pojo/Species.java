package com.demo.pojo;

import java.util.List;

import org.springframework.stereotype.Component;


@Component
public class Species {
	private String Sid;
	private String Sname;
	private String Sinfo;
	private List<Users> UsersList;
	private List<Courses> CoursesList;
	public String getSid() {
		return Sid;
	}
	public void setSid(String sid) {
		Sid = sid;
	}
	public String getSname() {
		return Sname;
	}
	public void setSname(String sname) {
		Sname = sname;
	}
	public String getSinfo() {
		return Sinfo;
	}
	public void setSinfo(String sinfo) {
		Sinfo = sinfo;
	}
	public List<Users> getUsersList() {
		return UsersList;
	}
	public void setUsersList(List<Users> usersList) {
		UsersList = usersList;
	}
	public List<Courses> getCoursesList() {
		return CoursesList;
	}
	public void setCoursesList(List<Courses> coursesList) {
		CoursesList = coursesList;
	}
	@Override
	public String toString() {
		return "Species [Sid=" + Sid + ", Sname=" + Sname + ", Sinfo=" + Sinfo + ", UsersList=" + UsersList
				+ ", CoursesList=" + CoursesList + "]";
	}
}
