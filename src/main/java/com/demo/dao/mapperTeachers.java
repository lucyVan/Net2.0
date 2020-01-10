package com.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.demo.pojo.Teachers;

@Repository
public interface mapperTeachers {

	public List<Teachers> selectTeachers(Teachers teachers);

	public int updateTeachers(Teachers teachers);
	
	public int deleteTeachers(List<String> teacherslist);

	public int insertTeachers(Teachers teachers);

	public List<Teachers> selectCourses(Teachers teachers);
}
