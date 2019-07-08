package cn.gdyvc.dao;

import java.util.Date;
import java.util.List;

import cn.gdyvc.model.Order;
import cn.gdyvc.model.User;

public  interface  OrderDao {
	//添加
	public int addNewOrder(Order order);
	//更新
	public int updateOrder(Order order);
	//删除
	public int deleteOrderById(int id);
	//根据id查询
	public List<Order> findOrderById(String id);
	//查询所有订单
	public List<Order> findAllOrder();
	
	
}
