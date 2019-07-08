package cn.gdyvc.model;

import java.util.Date;

public class Order {
		  private int id;//订单号
		  private String stuId;//学号
		  private String name;//用户名
		  private String mobile;//电话
		  private String cre_time;//创建时间
		  private int status;//维修状态
		  private String place;//维修地址
		  private String type;//类维修型
		  private String descrip;//描述

		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
	
		
		public String getStuId() {
			return stuId;
		}
		public void setStuId(String stuId) {
			this.stuId = stuId;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getMobile() {
			return mobile;
		}
		public void setMobile(String mobile) {
			this.mobile = mobile;
		}
		public String getCre_time() {
			return cre_time;
		}
		public void setCre_time(String cre_time) {
			this.cre_time = cre_time;
		}
		public int getStatus() {
			return status;
		}
		public void setStatus(int i) {
			this.status = i;
		}
		public String getPlace() {
			return place;
		}
		public void setPlace(String place) {
			this.place = place;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getDescrip() {
			return descrip;
		}
		public void setDescrip(String descrip) {
			this.descrip = descrip;
		}
		@Override
		public String toString() {
			return "OrderDao [id=" + id + ", stuId=" + stuId + ", name=" + name + ", mobile=" + mobile + ", cre_time="
					+ cre_time + ", status=" + status + ", place=" + place + ", type=" + type + ", descrip=" + descrip
					+ "]";
		}
	      
}
