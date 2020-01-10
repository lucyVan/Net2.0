package com.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.mapperTeachers;
import com.demo.pojo.Teachers;
@Service
public class TeachersManage {
	public TeachersManage() {
		super();
	}

	private mapperTeachers mapperTeachers;
	
	public List<Teachers> selectTeachers(Teachers teachers){
		return mapperTeachers.selectTeachers(teachers);
	}
	
	public List<Teachers> selectCourses(Teachers teachers){
		return mapperTeachers.selectCourses(teachers);
	}

	public int deleteTeachers(List<String> teacherslist) {
		return mapperTeachers.deleteTeachers(teacherslist);
	}

	public int insertTeachers(Teachers teachers) {
		return mapperTeachers.insertTeachers(teachers);
	}

	public int updateTeachers(Teachers teachers){
		return mapperTeachers.updateTeachers(teachers);
	}

	public mapperTeachers getMapperTeachers() {
		return mapperTeachers;
	}
	@Autowired
	public void setMapperTeachers(mapperTeachers mapperTeachers) {
		this.mapperTeachers = mapperTeachers;
	}

}