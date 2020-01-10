package com.demo.pojo;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

@Component
public class Users {
	private String Uid;
	private String Uname;
	private String Usex;
	private String Utel;
	private String Uemail;
	private String Upassword;
	private Date Ucreatetime;
	private String Uimage;
	private String Sid;
	private Species Species;
	private List<Learns> LearnsList;
	private List<Notices> NoticesList;
	private List<Orders> OrdersList;
	private List<Receivers> ReceiversList;
	private List<Courses> CoursesList;
	private List<Flows> FlowsList;

	public String getUid() {
		return Uid;
	}
	public void setUid(String uid) {
		Uid = uid;
	}
	public String getUname() {
		return Uname;
	}
	public void setUname(String uname) {
		Uname = uname;
	}
	public String getUsex() {
		return Usex;
	}
	public void setUsex(String usex) {
		Usex = usex;
	}
	public String getUtel() {
		return Utel;
	}
	public void setUtel(String utel) {
		Utel = utel;
	}
	public String getUemail() {
		return Uemail;
	}
	public void setUemail(String uemail) {
		Uemail = uemail;
	}
	public String getUpassword() {
		return Upassword;
	}
	public void setUpassword(String upassword) {
		Upassword = upassword;
	}
	public Date getUcreatetime() {
		return Ucreatetime;
	}
	public void setUcreatetime(Date ucreatetime) {
		Ucreatetime = ucreatetime;
	}
	public String getUimage() {
		return Uimage;
	}
	public void setUimage(String uimage) {
		Uimage = uimage;
	}
	public String getSid() {
		return Sid;
	}
	public void setSid(String sid) {
		Sid = sid;
	}
	public Species getSpecies() {
		return Species;
	}
	public void setSpecies(Species species) {
		Species = species;
	}
	public List<Learns> getLearnsList() {
		return LearnsList;
	}
	public void setLearnsList(List<Learns> learnsList) {
		LearnsList = learnsList;
	}
	public List<Notices> getNoticesList() {
		return NoticesList;
	}
	public void setNoticesList(List<Notices> noticesList) {
		NoticesList = noticesList;
	}
	public List<Orders> getOrdersList() {
		return OrdersList;
	}
	public void setOrdersList(List<Orders> ordersList) {
		OrdersList = ordersList;
	}
	public List<Receivers> getReceiversList() {
		return ReceiversList;
	}
	public void setReceiversList(List<Receivers> receiversList) {
		ReceiversList = receiversList;
	}
	public List<Courses> getCoursesList() {
		return CoursesList;
	}
	public void setCoursesList(List<Courses> coursesList) {
		CoursesList = coursesList;
	}
	public List<Flows> getFlowsList() {
		return FlowsList;
	}
	public void setFlowsList(List<Flows> flowsList) {
		FlowsList = flowsList;
	}
	@Override
	public String toString() {
		return "Users [Uid=" + Uid + ", Uname=" + Uname + ", Usex=" + Usex + ", Utel=" + Utel + ", Uemail=" + Uemail
				+ ", Upassword=" + Upassword + ", Ucreatetime=" + Ucreatetime + ", Uimage=" + Uimage + ", Sid=" + Sid
				+ ", Species=" + Species + ", LearnsList=" + LearnsList + ", NoticesList=" + NoticesList
				+ ", OrdersList=" + OrdersList + ", ReceiversList=" + ReceiversList + ", CoursesList=" + CoursesList
				+ ", FlowsList=" + FlowsList + "]";
	}
//	@Override
//	public String toString() {
//		return "Users [Uid=" + Uid + ", Uname=" + Uname + ", Usex=" + Usex + ", Utel=" + Utel + ", Uemail=" + Uemail
//				+ ", Upassword=" + Upassword + ", Ucreatetime=" + Ucreatetime + ", Uimage=" + Uimage + ", Sid=" + Sid
//				+ ", Species=" + Species + ", LearnsList=" + LearnsList + ", NoticesList=" + NoticesList
//				+ ", OrdersList=" + OrdersList + ", ReceiversList=" + ReceiversList + ", CoursesList=" + CoursesList
//				+ ", FlowsList=" + FlowsList + ", Oid=" + Oid + ", Fprovince=" + Fprovince + ", Fcity=" + Fcity
//				+ ", Fdistrict=" + Fdistrict + ", Fadress=" + Fadress + "]";
//	}
	
}
