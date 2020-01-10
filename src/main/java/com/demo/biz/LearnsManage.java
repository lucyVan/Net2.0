package com.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.mapperLearns;
import com.demo.pojo.Learns;
@Service
public class LearnsManage {
	private mapperLearns mapperLearns;
	public Learns selectByUid(int Uid){
		return mapperLearns.selectByUid(Uid);
	}

	public List<Learns> selectCourses(){
		return mapperLearns.selectCourses();
	}

	public List<Learns> selectUsers(){
		return mapperLearns.selectUsers();
	}

	public mapperLearns getMapperLearns() {
		return mapperLearns;
	}
	@Autowired
	public void setMapperLearns(mapperLearns mapperLearns) {
		this.mapperLearns = mapperLearns;
	}

	public int insertLearns(Learns learns) {
		return mapperLearns.insertLearns(learns);
	}

	public int deleteLearns(List<String> LearnsList) {
		return mapperLearns.deleteLearns(LearnsList);
	}

	public int updateLearns(Learns learns) {
		return mapperLearns.updateLearns(learns);
	}

	public List<Learns> selectLearns(Learns learns) {
		return mapperLearns.selectLearns(learns);
	}
	
}
