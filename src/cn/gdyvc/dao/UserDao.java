package cn.gdyvc.dao;

import java.util.List;

import cn.gdyvc.model.User;

public interface UserDao {
	//添加用户
	public int addUser(User user);
	//更新用户
	public int updateUser(User user);
	//删除用户
	public int deleteUserById(String id);
	//根据id查询
	public User findUserById(String id);
	//查询所有用户
	public List<User> findAllUser();
}
