package com.demo.dao;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.demo.pojo.Admins;
@Repository
public interface mapperAdmins {
	public List<Admins> selectAdmins(Admins admins);
}
