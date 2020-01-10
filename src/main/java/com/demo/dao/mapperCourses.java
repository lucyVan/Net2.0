package com.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.demo.pojo.Courses;
@Repository
public interface mapperCourses {
	
	//动态sql增删改查
	public int insertCourses(Courses courses);
	public int deleteCourses(List<String> coursesList);
	public int updateCourses(Courses courses);
	public List<Courses> selectCourses(Courses courses);
		
	public List<Courses> selectCoursesByAnything(Courses courses);
	//多表查询
	public List<Courses> selectSpecies();
	public List<Courses> selectOrders();
	public List<Courses> selectTeachers();
	public List<Courses> selectUsers();
	
	//简单查询
//	public List<Courses> selectAll();
//	public Courses selectByCid(int Cid);
//	public List<Courses> selectByTid(int Tid);
//	public List<Courses> selectBySid(int Sid);
//	public int insertONE(Courses c);
//	public int updateByCid(Courses c);
//	public int deleteByCid(Courses c);
}
