package cn.gdyvc.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.gdyvc.dao.Dao;
import cn.gdyvc.dao.UserDao;
import cn.gdyvc.model.User;
import cn.gdyvc.tool.Time;

public class UserTest {
	@Test
	public void addUserTest(){
		UserDao userDao = Dao.getUrderDao();
		User user = new User();
		Date date = new Date();
		SimpleDateFormat sld = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			date = sld.parse(sld.format(new Date()));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(date);
		
		user.setReg_time(Time.getStrTime());
		//向user对象添加属性值
		user.setLogin_name("666");
		user.setPassword("666");
		user.setPow_id(2);
		user.setVarname("xiaolizi66");
		//调用addUser方法，获取返回结果
		int flag = userDao.addUser(user);
		if(flag == 1){			
			System.out.println("添加用户成功");
		}else{
			System.out.println("添加用户失败");
		}
	}
	
	/**
	 * 更新用户数据
	 */
	@Test
	public void updateUserTest(){
		UserDao userDao = Dao.getUrderDao();
		User user = new User();
		user.setLogin_name("666");
		user.setPow_id(1);
		//调用userDao中的updateUser()方法执行更新
		int flag = userDao.updateUser(user);
		if(flag == 1){			
			System.out.println("修改用户成功");
		}else{
			System.out.println("修改用户失败");
		}
	}
	
	/**
	 * 删除用户名
	 */
	@Test
	public void deleteUserTest(){
		UserDao userDao = Dao.getUrderDao();
		//调用userDao中的deleteUserById()方法执行删除操作
		int flag = userDao.deleteUserById("555");
		if(flag == 1){			
			System.out.println("删除用户成功");
		}else{
			System.out.println("删除用户失败");
		}
	}
	
	/**
	 * 根据id查找用户
	 */
	@Test
	public void findUserByIdTest(){
		UserDao userDao = Dao.getUrderDao();
		//调用findUserById方法，获取user对象
        User user = userDao.findUserById("666");
        //输出查询结果
        System.out.println(user);
	}
	
	/**
	 * 查找所有用户
	 */
	@Test
	public void findAllUserTest(){
		UserDao userDao = Dao.getUrderDao();
		//调用findAllUser方法，获取user对象集合
        List<User> user =  userDao.findAllUser();
        //循环输出集合中对象
        for(User u : user){
        	System.out.println(u);
        }
	}
}
