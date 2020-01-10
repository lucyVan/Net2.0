
package com.demo.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.demo.dao.mapperCourses;
import com.demo.pojo.Courses;

public class CoursesTest {
	public static void main(String[] args) {
		try {
			String resource = "mybatisConfig.xml";
			InputStream inputStream;
			System.out.println("测试开始........");
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
			SqlSession se = factory.openSession();
			
			mapperCourses mapper = se.getMapper(mapperCourses.class);
			Courses courses = new Courses();
			
			//测试增√
//			
//			courses.setCid("echo");
//			courses.setTid("echo");
//			mapper.insertCourses(courses);
			
			//测试删√		
//			
//			courses.setCid("echo");
//			List<String> coursesList = new ArrayList<String>();			
//			coursesList.add("echo");			
//			mapper.deleteCourses(coursesList); 
			
			//测试改√
//			
//			courses.setCid("11");
//			courses.setTid("12");
//			mapper.updateCourses(courses);
			 
			//测试查√
//			
//			List<Courses> a = mapper.selectCourses(courses);
//			System.out.println("echo");
//			for (Courses u1:a) {
//				System.out.println("系统输出：" +u1);
//			}
			
			//对Courses的模糊查询
			courses.setCname("%人%");
			List<Courses> list = mapper.selectCoursesByAnything(courses);
			for(Courses c:list) {
				System.out.println("测试输出"+c);		
			}
			

			se.commit();
			se.close();
			System.out.println("测试结束........");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
