
package com.demo.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.demo.dao.mapperTeachers;
import com.demo.pojo.Teachers;

public class TeachersTest {
	public static void main(String[] args) {
		try {
			String resource = "mybatisConfig.xml";
			InputStream inputStream;
			System.out.println("测试开始........");
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
			SqlSession se = factory.openSession();
			
			mapperTeachers mapper = se.getMapper(mapperTeachers.class);
			com.demo.pojo.Teachers teachers = new Teachers();
			
			//查询测试
//			List<Teachers> t = mapper.selectTeachers(teachers);
//			for(Teachers t1 : t) {
//				System.out.println("测试输出："+t1);
//			}

			//增加测试
//			teachers.setTid("111");
//			teachers.setTname("kxy");
//			mapper.insertTeachers(teachers);

			//更新测试
//			teachers.setTid("111");
//			teachers.setTsex("nv");
//			teachers.setTaddr("cjbxcxbj");
//			mapper.updateTeachers(teachers);
//			System.out.println(mapper.updateTeachers(teachers));
			
			//删除测试
//			teachers.setTid("111");
//			List<String> teacherslist = new ArrayList<String>();
//			teacherslist.add("111");
//			mapper.deleteTeachers(teacherslist);
			
			
			//测试根据Teachers查询Courses
			teachers.setTid("7");
			List<Teachers> t = mapper.selectCourses(teachers);
			for(Teachers t1:t) {
				System.out.println("测试输出："+t1);
			}
			
			

			System.out.println("测试结束........");
			se.commit();
			se.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
