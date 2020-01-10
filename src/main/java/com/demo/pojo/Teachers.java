package com.demo.pojo;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Teachers {
	private String Tid;
	private String Tname;
	private String Tsex;
	private String Ttel;
	private String Taddr;
	private String Tinfo;
	private List<Courses> CoursesList;
	public String getTid() {
		return Tid;
	}
	public void setTid(String tid) {
		Tid = tid;
	}
	public String getTname() {
		return Tname;
	}
	public void setTname(String tname) {
		Tname = tname;
	}
	public String getTsex() {
		return Tsex;
	}
	public void setTsex(String tsex) {
		Tsex = tsex;
	}
	public String getTtel() {
		return Ttel;
	}
	public void setTtel(String ttel) {
		Ttel = ttel;
	}
	public String getTaddr() {
		return Taddr;
	}
	public void setTaddr(String taddr) {
		Taddr = taddr;
	}
	public String getTinfo() {
		return Tinfo;
	}
	public void setTinfo(String tinfo) {
		Tinfo = tinfo;
	}
	public List<Courses> getCoursesList() {
		return CoursesList;
	}
	public void setCoursesList(List<Courses> coursesList) {
		CoursesList = coursesList;
	}
	@Override
	public String toString() {
		return "Teachers [Tid=" + Tid + ", Tname=" + Tname + ", Tsex=" + Tsex + ", Ttel=" + Ttel + ", Taddr=" + Taddr
				+ ", Tinfo=" + Tinfo + ", CoursesList=" + CoursesList + "]";
	}
}
