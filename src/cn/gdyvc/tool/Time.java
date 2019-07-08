package cn.gdyvc.tool;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Time {
	
	public static String getStrTime() {
		return Time.gainDatetime(Time.getSystemDatetime());
	}
	
	/*
	 * 返回当前系统时间Date
	 * 效果：Wed Jun 05 00:20:55 CST 2019
	 * 对应为MySQL datetime类型
	 * */
	public static Date getSystemDatetime() {
		Date date = new Date();
		return date;
	}
	
	/*
	 * 将MySQL datetime和Java Date数据转为String
	 * 格式化为：2018-11-11 11:02:32格式
	 * */
	public static String gainDatetime(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(date);
	}
}
