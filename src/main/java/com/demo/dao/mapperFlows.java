package com.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.demo.pojo.Flows;
import com.demo.pojo.Users;
@Repository
public interface mapperFlows {
	
	//动态增删改查	
	public int insertFlows(Flows flows);
	public int deleteFlows(List<String> FlowsList);
	public int updateFlows(Flows flows);
	public List<Flows> selectFlows(Flows flows);
	
	//多表查询
	public List<Flows> selectOrders();
}
