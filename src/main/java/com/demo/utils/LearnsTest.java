
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

public class LearnsTest {
	public static void main(String[] args) {
		try {
			String resource = "mybatisConfig.xml";
			InputStream inputStream;
			System.out.println("测试开始........");
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
			SqlSession se = factory.openSession();
			
			//调取接口
//			
//			mapperLearns mapper = se.getMapper(mapperLearns.class);
//			Learns learns = new Learns();
			
			
			//测试删√		
//			
//			learns.setLid("444");
//			List<String> learnsList = new ArrayList<String>();			
//			learnsList.add("444");			
//			mapper.deleteLearns(learnsList);
			
			//测试改√
//			learns.setLid("444");
//			learns.setCid("echo12");
//			mapper.updateLearns(learns);
			 
			//测试查√
//			
//			List<Learns> a = mapper.selectLearns(learns);			
//			for (Learns u1 : a) {
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
