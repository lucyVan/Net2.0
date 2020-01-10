package com.demo.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.demo.pojo.Users;

@Component
public interface mapperUsers {
	
	
	//动态sql增删改查
	
	public int insertUsers(Users users);
	public int deleteUsers(List<String> userslist);	
	public int updateUsers(Users users);
	public List<Users> selectUsers(Users users);	
	//联合查询
	public List<Users> selectSpecies();
	public List<Users> selectLearns();
	public List<Users> selectNotices();
	public List<Users> selectOrders();
	public List<Users> selectReceivers();
	public List<Users> selectCourses();
	public List<Users> selectFlows(Users users);
}