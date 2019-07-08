package cn.gdyvc.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

import cn.gdyvc.dao.Dao;
import cn.gdyvc.model.Order;
import cn.gdyvc.tool.Time;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class UserAction extends ActionSupport{
	private Order order;
	private JSONArray result;
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public JSONArray getResult() {
		return result;
	}
	public void setResult(JSONArray result) {
		this.result = result;
	}
	/**
	 * 根据id Ajax修改保修单状态 0->1
	 */
	public String acceptOrder() {
		Map<String,String> map=new HashMap();
		if(order!=null) {
			order.setStatus(1);
			int data = Dao.getOrderDao()
					.updateOrder(order);
			if(data!=0)
				map.put("result","成功");
			else map.put("result", "失败");
		}
		else map.put("result", "失败");
		result = JSONArray.fromObject(map);
		
		return "acceptOrder";
	}
	
	/**
	 * 根据id Ajax修改保修单状态 1->2
	 */
	public String finshOrder() {
		Map<String,String> map=new HashMap();
		if(order!=null) {
			order.setStatus(2);
			int data = Dao.getOrderDao()
					.updateOrder(order);
			if(data!=0)
				map.put("result","成功");
			else map.put("result", "失败");
		}
		else map.put("result", "失败");
		result = JSONArray.fromObject(map);
		
		return "finshOrder";
	}
	
	/**
	 * 根据id Ajax删除报修单
	 */
	public String deleteOrder() {
		Map<String, String> map = new HashMap();
		if(order!=null) {
			int data = Dao.getOrderDao()
					.deleteOrderById(order.getId());
			if(data!=0) {
				map.put("result","成功");
			}
			else map.put("result", "失败");
		}
		else map.put("result", "失败");
		result = JSONArray.fromObject(map);
		return "deleteOrder";
	}
	/**
	 * 用户提交报修单
	 * @return
	 */
	public String repair() {
		//order = new Order();
		order.setCre_time(Time.getStrTime());
		order.setStatus(0);
		System.out.println(order);
		int flag = Dao.getOrderDao().addNewOrder(order);
		if(flag==1)
			return "repair_success";
		else
			return "fail";
	}
	
	/**
	 * ajax查询未受理的维修单
	 */
	public String queryOrderAll() {
		List<Order> data = Dao.getOrderDao()
				.findAllOrder();
		if(data.size()!=0) {
			result = JSONArray.fromObject(data);
			return "queryOrderAll";
		}
		return "fail";
	}
	
	
	/**
	 * 根据学号查询报修单的ajax请求
	 * @return
	 */
	public String queryOrderByStuid() {
		//System.out.println(order.getStuId());
		if(order.getStuId()!=null) {
			List<Order> data = Dao.getOrderDao()
					.findOrderById(order.getStuId());
			//System.out.println(data.size());
			if(data.size()!=0) {
				result = JSONArray.fromObject(data);
				return "queryOrderByStuid";
			}
		}
		return "fail";
	}
	
}