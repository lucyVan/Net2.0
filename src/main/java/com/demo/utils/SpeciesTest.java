
package com.demo.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.demo.dao.mapperSpecies;
import com.demo.pojo.Species;
import com.demo.pojo.Teachers;

public class SpeciesTest {
	public static void main(String[] args) {
		try {
			String resource = "mybatisConfig.xml";
			InputStream inputStream;
			System.out.println("测试开始........");
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
			SqlSession se = factory.openSession();
			mapperSpecies mapper = se.getMapper(mapperSpecies.class);
			Species species = new Species();
			
			//查询测试
//			List<Species> s = mapper.selectSpecies(species);
//			for(Species s1 : s) {
//				System.out.println("测试输出："+s1);
//			}

			//增加测试
//			species.setSid("222");
//			species.setSname("kkk");
//			mapper.insertSpecies(species);

			//更新测试
//			species.setSid("222");
//			species.setSname("lll");
//			species.setSinfo("vggjj");
//			mapper.updateSpecies(species);
//			System.out.println(mapper.updateSpecies(species));
			
			
			//删除测试
//			species.setSid("111");
//			List<String> specieslist = new ArrayList<String>();
//			specieslist.add("111");
//			mapper.deleteSpecies(specieslist);
			
			//测试通过Species查询Courses
//			species.setSid("7");
//			List<Species> s = mapper.selectCourses(species);
//			for(Species s1:s) {
//				System.out.println("测试输出："+s1);
//			}
			
			//测试通过Species查询Users
//			species.setSid("2");
//			List<Species> s = mapper.selectUsers(species);
//			for(Species s1:s) {
//				System.out.println("测试输出："+s1);
//			}
			
			

			System.out.println("测试结束........");
			se.commit();
			se.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
