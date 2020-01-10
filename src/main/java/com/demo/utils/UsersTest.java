
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

public class UsersTest {
	public static void main(String[] args) {
		try {
			String resource = "mybatisConfig.xml";
			InputStream inputStream;
			System.out.println("测试开始........");
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
			SqlSession se = factory.openSession();
			
			//调取接口
//			mapperUsers mapper = se.getMapper(mapperUsers.class);
//			Users users = new Users();
			
			//测试增√
//			users.setUid("444");
//			users.setUname("echo4");
//			mapper.insertUsers(users);
			
			//测试删√		
//			users.setUid("444");
//			List<String> usersList = new ArrayList<String>();			
//			usersList.add("444");			
//			mapper.deleteUsers(usersList);
			
			//测试改√
//			users.setUid("11");
//			users.setUname("echo12");
//			mapper.updateUsers(users);
			 
			//测试查√
//			List<Users> a = mapper.selectUsers(users);			
//			for (Users u1 : a) {
//				System.out.println("系统输出：" +u1);
//			}
			
			//通过Users查Species
//			users.setUid("1");
//			List<Users> u =mapper.selectSpecies();
//			for(Users u1:u) {
//				System.out.println("测试输出"+u1);				
//			}
			//通过Users查Learns
//			users.setUid("1");
//			List<Users> u =mapper.selectLearns();
//			for(Users u1:u) {
//				System.out.println("测试输出"+u1);				
//			}
			
						

			se.commit();
			se.close();
			System.out.println("测试结束........");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
