package com.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.demo.pojo.Orders;
@Repository
public interface mapperOrders {

	public List<Orders> selectOrders(Orders orders);

	public int insertOrders(Orders orders);

	public int deleteOrders(List<String> orderslist);

	public int updateOrders(Orders orders);

	
	
	public List<Orders> selectUsers(Orders orders);

	public List<Orders> selectCourses(Orders orders);

	public List<Orders> selectFlows(Orders orders);

}