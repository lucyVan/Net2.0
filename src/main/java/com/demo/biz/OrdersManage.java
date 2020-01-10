package com.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.mapperOrders;
import com.demo.pojo.Orders;
@Service
public class OrdersManage {
	
	private mapperOrders mapperOrders;
	
	public OrdersManage() {}
	
	
	public mapperOrders getMapperOrders() {
		return mapperOrders;
	}
	@Autowired
	public void setMapperOrders(mapperOrders mapperOrders) {
		this.mapperOrders = mapperOrders;
	}
	
	public List<Orders> selectOrders(Orders orders) {
		return mapperOrders.selectOrders(orders);
	}

	public int insertOrders(Orders orders) {
		return mapperOrders.insertOrders(orders);
	}

	public int deleteOrders(List<String> orderslist) {
		return mapperOrders.deleteOrders(orderslist);
	}

	public int updateOrders(Orders orders) {
		return mapperOrders.updateOrders(orders);
	}

	public List<Orders> selectUsers(Orders orders) {
		return mapperOrders.selectUsers(orders);
	}

	public List<Orders> selectCourses(Orders orders) {
		return mapperOrders.selectCourses(orders);
	}

	public List<Orders> selectFlows(Orders orders) {
		return mapperOrders.selectFlows(orders);
	}


	
	
	

}
