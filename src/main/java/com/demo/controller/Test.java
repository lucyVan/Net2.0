package com.demo.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.demo.dao.mapperReceivers;
import com.demo.dao.mapperSpecies;
import com.demo.pojo.Receivers;
import com.demo.pojo.Species;

public class Test {
    public static void main(String[] args) {
        try {
            String resource = "mybatisConfig.xml";
            InputStream inputStream;
            System.out.println("测试开始........");
            inputStream = Resources.getResourceAsStream(resource);
            SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
            SqlSession se = factory.openSession();
            mapperReceivers mapper = se.getMapper(mapperReceivers.class);
            Receivers receivers = new Receivers();
            receivers.setRid("1");
            receivers.setUid("2");
            System.out.println(mapper.updateReceivers(receivers));
            System.out.println(mapper.selectReceivers(receivers));
//			mapperNotices mapper = se.getMapper(mapperNotices.class);
//			Notices notices = new Notices();
//			notices.setNid("100000006");
//			mapper.selectNotices(notices);
//			System.out.println(mapper.selectNotices(notices));
            //调取接口
//			mapperUsers mapper = se.getMapper(mapperUsers.class);
//			Users users = new Users();

//			mapperFlows mapper = se.getMapper(mapperFlows.class);
//			Flows flows = new Flows();

//			mapperCourses mapper = se.getMapper(mapperCourses.class);
//			Courses courses = new Courses();

            //测试增√
//			users.setUid("444");
//			users.setUname("echo4");
//			mapper.insertUsers(users);

//			courses.setCid("echo");
//			courses.setTid("echo");
//			mapper.insertCourses(courses);

            //测试删√
//			users.setUid("444");
//			List<String> usersList = new ArrayList<String>();			
//			usersList.add("444");			
//			mapper.deleteUsers(usersList);

//			courses.setCid("echo");
//			List<String> coursesList = new ArrayList<String>();			
//			coursesList.add("echo");			
//			mapper.deleteCourses(coursesList); 

            //测试改√
//			users.setUid("11");
//			users.setUname("echo12");
//			mapper.updateUsers(users);

//			courses.setCid("11");
//			courses.setTid("12");
//			mapper.updateCourses(courses);

            //测试查√
//			List<Users> a = mapper.selectUsers(users);			
//			for (Users u1 : a) {
//				System.out.println("系统输出：" +u1);
//			}

//			List<Courses> a = mapper.selectCourses(courses);
//			System.out.println("echo");
//			for (Courses u1:a) {
//				System.out.println("系统输出：" +u1);
//			}


            se.commit();
            se.close();
            System.out.println("测试结束........");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
