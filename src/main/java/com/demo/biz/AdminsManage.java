package com.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.mapperAdmins;
import com.demo.pojo.Admins;

@Service
public class AdminsManage {
    private mapperAdmins mapperAdmins;

    public AdminsManage() {
        super();
    }

    @Autowired
    public void setMapperAdmins(mapperAdmins mapperAdmins) {
        this.mapperAdmins = mapperAdmins;
    }


    public mapperAdmins getMapperAdmins() {
        return mapperAdmins;
    }

    public List<Admins> selectAdmins(Admins admins) {
        return mapperAdmins.selectAdmins(admins);
    }
}
