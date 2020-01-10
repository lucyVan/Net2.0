package com.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.demo.pojo.Species;
@Repository
public interface mapperSpecies {

	public List<Species> selectSpecies(Species species);
	
	public int updateSpecies(Species species);
	
	public int deleteSpecies(List<String> specieslist);

	public int insertSpecies(Species species);


	public List<Species> selectCourses(Species species);
	
	public List<Species> selectUsers(Species species);

	
}
