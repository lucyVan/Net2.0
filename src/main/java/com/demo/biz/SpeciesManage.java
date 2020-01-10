package com.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.mapperSpecies;
import com.demo.pojo.Species;
@Service
public class SpeciesManage {
	
	private mapperSpecies mapperSpecies;
	private SpeciesManage() {}
	
	
	public mapperSpecies getMapperSpecies() {
		return mapperSpecies;
	}
	@Autowired
	public void setMapperSpecies(mapperSpecies mapperSpecies) {
		this.mapperSpecies = mapperSpecies;
	}

	public List<Species> selectSpecies(Species species) {
		return mapperSpecies.selectSpecies(species);
	}

	public int insertSpecies(Species species) {
		return mapperSpecies.insertSpecies(species);
	}

	public int deleteSpecies(List<String> specieslist) {
		return mapperSpecies.deleteSpecies(specieslist);
	}

	public int updateSpecies(Species species) {
		return mapperSpecies.updateSpecies(species);
	}

	public List<Species> selectCourses(Species species) {
		return mapperSpecies.selectCourses(species);
	}
	
	public List<Species> selectUsers(Species species) {
		return mapperSpecies.selectUsers(species);
	}



}
