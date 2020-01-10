package com.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.mapperReceivers;
import com.demo.pojo.Receivers;
@Service
public class ReceiversManage {
	
	private mapperReceivers mapperReceivers;

	public ReceiversManage() {}
	
	public mapperReceivers getMapperReceivers() {
		return mapperReceivers;
	}
	
	@Autowired
	public void setMapperReceivers(mapperReceivers mapperReceivers) {
		this.mapperReceivers = mapperReceivers;
	}
	
	
	public List<Receivers> selectReceivers(Receivers receivers){
		return mapperReceivers.selectReceivers(receivers);
	}

	public int insertReceivers(Receivers receivers) {
		return mapperReceivers.insertReceivers(receivers);
	}

	public int deleteReceivers(List<String> receiverslist) {
		return mapperReceivers.deleteReceivers(receiverslist);
	}

	public int updateReceivers(Receivers receivers) {
		return mapperReceivers.updateReceivers(receivers);
	}
	
	public List<Receivers> selectUsers(Receivers receivers){
		return mapperReceivers.selectUsers(receivers);
	}	

}
