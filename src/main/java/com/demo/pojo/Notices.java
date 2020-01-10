package com.demo.pojo;

import org.springframework.stereotype.Component;

@Component
public class Notices {
	private String Nid;
	private String Oid;
	private String Uid;
	private String Nstate;
	private String Nmsg;
	private Orders Orders;
	private Users Users;
	public String getNid() {
		return Nid;
	}
	public void setNid(String nid) {
		Nid = nid;
	}
	public String getOid() {
		return Oid;
	}
	public void setOid(String oid) {
		Oid = oid;
	}
	public String getUid() {
		return Uid;
	}
	public void setUid(String uid) {
		Uid = uid;
	}
	public String getNstate() {
		return Nstate;
	}
	public void setNstate(String nstate) {
		Nstate = nstate;
	}
	public String getNmsg() {
		return Nmsg;
	}
	public void setNmsg(String nmsg) {
		Nmsg = nmsg;
	}
	public Orders getOrders() {
		return Orders;
	}
	public void setOrders(Orders orders) {
		Orders = orders;
	}
	public Users getUsers() {
		return Users;
	}
	public void setUsers(Users users) {
		Users = users;
	}
	@Override
	public String toString() {
		return "Notices [Nid=" + Nid + ", Oid=" + Oid + ", Uid=" + Uid + ", Nstate=" + Nstate + ", Nmsg=" + Nmsg
				+ ", Orders=" + Orders + ", Users=" + Users + "]";
	}
	
}
