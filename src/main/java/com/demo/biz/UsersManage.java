package com.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.mapperUsers;
import com.demo.pojo.Users;

@Service
public class UsersManage {
	private Users Users;

	private mapperUsers mapperUsers;

	public Users getUsers() {
		return Users;
	}

	public void setUsers(Users users) {
		Users = users;
	}

	public mapperUsers getMapperUsers() {
		return mapperUsers;
	}

	@Autowired
	public void setMapperUsers(mapperUsers mapperUsers) {
		this.mapperUsers = mapperUsers;
	}

	public int insertUsers(Users users) {
		return mapperUsers.insertUsers(users);
	}

	public int updateUsers(Users users) {
		return mapperUsers.updateUsers(users);
	}


	public int deleteUsers(List<String> userslist) {
		return mapperUsers.deleteUsers(userslist);
	}

	public List<Users> selectSpecies() {
		return mapperUsers.selectSpecies();
	}

	public List<Users> selectLearns() {
		return mapperUsers.selectLearns();
	}

	public List<Users> selectNotices() {
		return mapperUsers.selectNotices();
	}

	public List<Users> selectOrders() {
		return mapperUsers.selectOrders();
	}

	public List<Users> selectReceivers() {
		return mapperUsers.selectReceivers();
	}

	public List<Users> selectCourses() {
		return mapperUsers.selectCourses();
	}
	
	public List<Users> selectUsers(Users users) {
		return mapperUsers.selectUsers(users);
	}

	public List<Users> selectFlows(Users users) {
		return mapperUsers.selectFlows(users);
	}
}
