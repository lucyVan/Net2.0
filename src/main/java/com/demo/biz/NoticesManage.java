package com.demo.biz;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.mapperNotices;
import com.demo.pojo.Notices;

@Service
public class NoticesManage {

	private Notices  Notices;
	private mapperNotices mapperNotices;
	public Notices getNotices() {
		return Notices;
	}
	public void setNotices(Notices notices) {
		Notices = notices;
	}
	
	public mapperNotices getMapperNotices() {
		return mapperNotices;
	}
	@Autowired
	public void setMapperNotices(mapperNotices mapperNotices) {
		this.mapperNotices = mapperNotices;
	}
	
	public List<Notices> selectNotices(Notices notices) {
		return mapperNotices.selectNotices(notices);
	}
	
	public int insertNotices(Notices notices) {
		return mapperNotices.insertNotices(notices);
	}
	
	public int deleteNotices(List<String> noticeslist) {
		return mapperNotices.deleteNotices(noticeslist);
	}
	
	public int updateNotices(Notices notices) {
		return mapperNotices.updateNotices(notices);
	}
	
	
	public List<Notices> selectOrders(Notices notices) {
		return mapperNotices.selectOrders(notices);
	}
	public List<Notices> selectUsers(Notices notices) {
		return mapperNotices.selectUsers(notices);
	}
	
}
