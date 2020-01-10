
package com.demo.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.demo.dao.mapperOrders;
import com.demo.pojo.Orders;
import com.demo.pojo.Teachers;

public class OrdersTest {
	public static void main(String[] args) {
		try {
			String resource = "mybatisConfig.xml";
			InputStream inputStream;
			System.out.println("测试开始........");
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
			SqlSession se = factory.openSession();
			
			mapperOrders mapper = se.getMapper(mapperOrders.class);
			Orders orders = new Orders();
			
			//查询测试√
//			List<Orders> o = mapper.selectOrders(orders);
//			for(Orders o1 : o) {
//				System.out.println("测试输出："+o1);
//			}

			//增加测试√
//			orders.setOid("111");
//			orders.setCid("222");
//			orders.setUid("333");
//			orders.setOevaul("dsdsdcvc");
//			mapper.insertOrders(orders);

			//更新测试√
//			orders.setOid("111");
//			orders.setOevaul("cjbxcxbj");
//			mapper.updateOrders(orders);
//			System.out.println(mapper.updateOrders(orders));
			
			//删除测试
//			orders.setOid("111");
//			List<String> orderslist = new ArrayList<String>();
//			orderslist.add("111");
//			mapper.deleteOrders(orderslist);
			
			//测试根据Orders查询Users
//			orders.setUid("2");
//			List<Orders> o = mapper.selectUsers(orders);
//			for(Orders o1:o) {
//				System.out.println("测试输出："+o1);
//			}
//			
			//测试根据Orders查询Courses 
//			orders.setCid("2");
//			List<Orders> o = mapper.selectCourses(orders);
//			for(Orders o1:o) {
//				System.out.println("测试输出："+o1);
//			}
			
			//测试根据Orders查询Flows 
//			orders.setOid("2");
//			List<Orders> o = mapper.selectFlows(orders);
//			for(Orders o1:o) {
//				System.out.println("测试输出："+o1);
//			}

			
			System.out.println("测试结束........");
			se.commit();
			se.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
