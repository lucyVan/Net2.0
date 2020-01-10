package com.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.demo.pojo.Learns;
@Repository
public interface mapperLearns {
	
	//动态增删改查
	public int insertLearns(Learns learns);
	public int deleteLearns(List<String> LearnsList);
	public int updateLearns(Learns learns);
	public List<Learns> selectLearns(Learns learns);
	
	
	//简单查询
	public Learns selectByUid(int Uid);
	
	
	//多表查询
	public List<Learns> selectCourses();
	public List<Learns> selectUsers();
}
