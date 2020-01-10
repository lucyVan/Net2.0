package com.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.demo.pojo.Receivers;
@Repository
public interface mapperReceivers {
	
	public List<Receivers> selectReceivers(Receivers receivers);

	public int insertReceivers(Receivers receivers);

	public int deleteReceivers(List<String> receiverslist);

	public int updateReceivers(Receivers receivers);
	
	
	public List<Receivers> selectUsers(Receivers receivers);
}