package cn.gdyvc.dao;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Dao {
	//定义配置文件路径
	static String xmlPath = "cn/gdyvc/dao/JdbcTemplateBeans.xml";
	//创建Spring容器，加载配置文件
	static ApplicationContext applicationContext = 
		                  new ClassPathXmlApplicationContext(xmlPath);
	//获取orderDao实例
	public static OrderDao getOrderDao() {
		return (OrderDao) applicationContext.getBean("orderDao");
	}
	
	public static UserDao getUrderDao() {
		return (UserDao) applicationContext.getBean("userDao");
	}
}
