package cn.gdyvc.test;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.junit.Test;

import cn.gdyvc.model.Order;
import cn.gdyvc.tool.Time;
import net.sf.json.JSONObject;

public class JsonTest {
	@Test
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Order order = new Order();
		order.setName("qqq");
		order.setStuId("qq");
		order.setMobile("qq");
		order.setType("qqq");
		order.setPlace("qqq-123");
		order.setDescrip("123bb坏112了");
		Map<String,String> map = new HashMap();
		map.put("name", order.getName());
//		JSONObject jsonOne = new JSONObject();
//		jsonOne.put("name", order.getName());
		JSONObject object = JSONObject.fromObject(order);
		System.out.println(object);
	}
	@Test
	public void haha() {
		Order order = new Order();
		order.setCre_time(Time.gainDatetime(Time.getSystemDatetime()));
		order.setName("qqq");
		JSONObject jsonOne = new JSONObject();
		jsonOne.put("name", order.getName());
		System.out.println(jsonOne.toString());
	}
}
