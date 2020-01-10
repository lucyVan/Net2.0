package com.demo.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.demo.dao.mapperAdmins;
import com.demo.dao.mapperCourses;
import com.demo.dao.mapperFlows;
import com.demo.dao.mapperLearns;
import com.demo.dao.mapperTeachers;
import com.demo.dao.mapperUsers;
import com.demo.pojo.Admins;
import com.demo.pojo.Courses;
import com.demo.pojo.Flows;
import com.demo.pojo.Learns;
import com.demo.pojo.Teachers;
import com.demo.pojo.Users;

public class AdminsTest {
    public static void main(String[] args) {
        try {
            String resource = "mybatisConfig.xml";
            InputStream inputStream;
            System.out.println("测试开始........");
            inputStream = Resources.getResourceAsStream(resource);
            SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
            SqlSession se = factory.openSession();
            mapperAdmins mapper = se.getMapper(mapperAdmins.class);
            Admins admins = new Admins();
            List<Admins> a = mapper.selectAdmins(admins);
            for (Admins u1 : a) {
                System.out.println("系统输出：" + u1);
            }
            se.commit();
            se.close();
            System.out.println("测试结束........");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
