package cn.gdyvc.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.gdyvc.dao.Dao;
import cn.gdyvc.dao.OrderDao;
import cn.gdyvc.model.Order;
import cn.gdyvc.model.User;

public class OrderTest {
	@Test
	public void addUserTest(){
		//定义配置文件路径
		String xmlPath = "cn/gdyvc/dao/JdbcTemplateBeans.xml";
		//创建Spring容器，加载配置文件
		ApplicationContext applicationContext = 
			                  new ClassPathXmlApplicationContext(xmlPath);
		//获取userDao实例
		OrderDao orderDao = (OrderDao) applicationContext.getBean("orderDao");
		Order order= new Order();
		//向user对象添加属性值
		order.setName("1211");
		order.setStuId("1111");
		order.setMobile("123123");
		order.setType("身体缺陷");
		order.setPlace("4-308");
		order.setDescrip("不孕不育");
		//调用addUser方法，获取返回结果
		int flag =orderDao.addNewOrder(order);
		if(flag == 1){			
			System.out.println("添加用户成功");
		}else{
			System.out.println("添加用户失败");
		}
	}
	
	
	@Test
	public void findUserByIdTest(){
		//定义配置文件路径
				String xmlPath = "cn/gdyvc/dao/JdbcTemplateBeans.xml";
				//创建Spring容器，加载配置文件
				ApplicationContext applicationContext = 
					                  new ClassPathXmlApplicationContext(xmlPath);
				//获取userDao实例
				OrderDao orderDao = (OrderDao) applicationContext.getBean("orderDao");
		//调用findUserById方法，获取user对象
				   List<Order> order =  orderDao.findOrderById("555");
			        //循环输出集合中对象
			        for(Order o : order){
			        	System.out.println(o);
			        }
	}
	
	@Test
	public void findAllOrderTest(){
		//定义配置文件路径
				String xmlPath = "cn/gdyvc/dao/JdbcTemplateBeans.xml";
				//创建Spring容器，加载配置文件
				ApplicationContext applicationContext = 
					                  new ClassPathXmlApplicationContext(xmlPath);
				//获取userDao实例
				OrderDao orderDao = (OrderDao) applicationContext.getBean("orderDao");
		//调用findUserById方法，获取user对象
				   List<Order> order =  orderDao.findAllOrder();
			        //循环输出集合中对象
			        for(Order o : order){
			        	System.out.println(o);
			        }
	}
	
	
	/**
	 * 更新用户数据
	 */
	@Test
	public void updateUserTest(){
		OrderDao orderDao = Dao.getOrderDao();
		Order order= new Order();
		order.setStuId("1111");
		order.setStatus(1);//1表示已受理
		//调用userDao中的updateUser()方法执行更新
		int flag = orderDao.updateOrder(order);
		if(flag == 1){			
			System.out.println("修改用户成功");
		}else{
			System.out.println("修改用户失败");
		}
	}
	
	/**
	 * 删除用户
	 */
	@Test
	public void deleteUserTest(){
		OrderDao orderDao = Dao.getOrderDao();
		//调用userDao中的deleteUserById()方法执行删除操作
		int flag = orderDao.deleteOrderById(1);
		if(flag == 1){			
			System.out.println("删除用户成功");
		}else{
			System.out.println("删除用户失败");
		}
	}
}


