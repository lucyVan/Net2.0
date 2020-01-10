
package com.demo.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.demo.dao.mapperReceivers;
import com.demo.pojo.Receivers;
import com.demo.pojo.Teachers;

public class ReceiversTest {
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
			
			//查询测试
//			List<Receivers> r = mapper.selectReceivers(receivers);
//			for(Receivers r1 : r) {
//				System.out.println("测试输出："+r1);
//			}

			
			//增加测试
//			receivers.setRid("111");
//			receivers.setUid("222");
//			receivers.setRname("kxy");
//			mapper.insertReceivers(receivers);

			//更新测试
//			receivers.setRid("111");
//			receivers.setUid("222");
//			receivers.setRname("cjbxcxbj");
//			mapper.updateReceivers(receivers);
//			System.out.println(mapper.updateReceivers(receivers));
			
			
			//删除测试
//			receivers.setRid("111");
//			List<String> receiverslist = new ArrayList<String>();
//			receiverslist.add("111");
//			mapper.deleteReceivers(receiverslist);
			
			
			//测试根据Receivers查询Users
//			receivers.setUid("2");
//			List<Receivers> r = mapper.selectUsers(receivers);
//			for(Receivers r1:r) {
//				System.out.println("测试输出："+r1);
//			}
			
			
			System.out.println("测试结束........");
			se.commit();
			se.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
