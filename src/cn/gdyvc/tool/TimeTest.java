package cn.gdyvc.tool;

import java.util.Date;

import org.junit.Test;

public class TimeTest {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Date date = Time.getSystemDatetime();
		System.out.println(date);
		System.out.println(Time.gainDatetime(date));
		
	}

}
