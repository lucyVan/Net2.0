package com.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.mapperFlows;
import com.demo.pojo.Flows;
@Service
public class FlowsManage {
	private mapperFlows mapperFlows;

	public List<Flows> selectOrders(){
		return mapperFlows.selectOrders();
	}
	public mapperFlows getMapperFlows() {
		return mapperFlows;
	}
	@Autowired
	public void setMapperFlows(mapperFlows mapperFlows) {
		this.mapperFlows = mapperFlows;
	}

	public int insertFlows(Flows flows) {
		return mapperFlows.insertFlows(flows);
	}

	public int deleteFlows(List<String> FlowsList) {
		return mapperFlows.deleteFlows(FlowsList);
	}

	public int updateFlows(Flows flows) {
		return mapperFlows.updateFlows(flows);
	}

	public List<Flows> selectFlows(Flows flows) {
		return mapperFlows.selectFlows(flows);
	}
	

}
