package com.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.demo.pojo.Notices;

@Repository
public interface mapperNotices {

	public List<Notices> selectNotices(Notices notices);

	public int insertNotices(Notices notices);

	public int deleteNotices(List<String> noticeslist);

	public int updateNotices(Notices notices);

	
	public List<Notices> selectOrders(Notices notices);

	public List<Notices> selectUsers(Notices notices);
}
