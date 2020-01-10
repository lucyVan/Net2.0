package com.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.mapperCourses;
import com.demo.pojo.Courses;
@Service
public class CoursesManage {
	private mapperCourses mapperCourses;
	
	public CoursesManage() {
		super();
	}
	
	public List<Courses> selectSpecies(){
		return mapperCourses.selectSpecies();
	}

	public List<Courses> selectOrders(){
		return mapperCourses.selectOrders();
	}

	public List<Courses> selectUsers(){
		return mapperCourses.selectUsers();
	}
	
	public List<Courses> selectTeachers(){
		return mapperCourses.selectTeachers();
	}
	
	
	public mapperCourses getMapperCourses() {
		return mapperCourses;
	}

	@Autowired
	public void setMapperCourses(mapperCourses mapperCourses) {
		this.mapperCourses = mapperCourses;
	}

	public int insertCourses(Courses courses) {
		return mapperCourses.insertCourses(courses);
	}

	public int deleteCourses(List<String> coursesList) {
		return mapperCourses.deleteCourses(coursesList);
	}

	public int updateCourses(Courses courses) {
		return mapperCourses.updateCourses(courses);
	}

	public List<Courses> selectCourses(Courses courses) {
		return mapperCourses.selectCourses(courses);
	}
	
	public List<Courses> selectCoursesByAnything(Courses courses) {
		return mapperCourses.selectCoursesByAnything(courses);
	}
}
