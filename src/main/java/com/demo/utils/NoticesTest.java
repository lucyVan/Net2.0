package com.demo.utils;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.demo.dao.mapperNotices;
import com.demo.pojo.Notices;

public class NoticesTest {
	public static void main(String[] args) {
		try {
			String resource = "mybatisConfig.xml";
			InputStream inputStream;
			System.out.println("测试开始........");
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
			SqlSession se = factory.openSession();
			
			mapperNotices mapper = se.getMapper(mapperNotices.class);
			Notices notices = new Notices();
			
			//查询测试
//			List<Notices> n = mapper.selectNotices(notices);
//			for(Notices n1 : n) {
//				System.out.println("测试输出："+n1);
//			}

			//增加测试
//			notices.setNid("111");
//			notices.setOid("222");
//			notices.setUid("333");
//			notices.setNstate("kkk");
//			mapper.insertNotices(notices);

			//更新测试
//			notices.setNid("111");
//			notices.setOid("222");
//			notices.setUid("333");
//			notices.setNstate("cjbxcxbj");
//			mapper.updateNotices(notices);
//			System.out.println(mapper.updateNotices(notices));
			
			//删除测试
//			notices.setNid("111");
//			List<String> noticeslist = new ArrayList<String>();
//			noticeslist.add("111");
//			mapper.deleteNotices(noticeslist);
			
			//测试根据Notices查询Orders
//			notices.setOid("2");
//			List<Notices> n = mapper.selectOrders(notices);
//			for(Notices n1:n) {
//				System.out.println("测试输出："+n1);
//			}
			
			//测试根据Notices查询Users
//			notices.setUid("2");
//			List<Notices> n = mapper.selectUsers(notices);
//			for(Notices n1:n) {
//				System.out.println("测试输出："+n1);
//			}

			
			
			System.out.println("测试结束........");
			se.commit();
			se.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
