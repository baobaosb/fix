package cn.gdyvc.model;

import java.util.Date;

public class User {	
		private String login_name; //用户名
		private String password; //密码
		private Integer pow_id;//权限
		private String varname;//姓名
		private String email;//邮箱
		private String mobile;//电话
		private String last_time;//上一次登录时间
	    private String reg_time;//现在登录时间
	    
		public String getLogin_name() {
			return login_name;
		}
		public void setLogin_name(String login_name) {
			this.login_name = login_name;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public Integer getPow_id() {
			return pow_id;
		}
		public void setPow_id(Integer pow_id) {
			this.pow_id = pow_id;
		}
		public String getVarname() {
			return varname;
		}
		public void setVarname(String varname) {
			this.varname = varname;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getMobile() {
			return mobile;
		}
		public void setMobile(String mobile) {
			this.mobile = mobile;
		}
		public String getLast_time() {
			return last_time;
		}
		public void setLast_time(String last_time) {
			this.last_time = last_time;
		}
		public String getReg_time() {
			return reg_time;
		}
		public void setReg_time(String reg_time) {
			this.reg_time = reg_time;
		}
		@Override
		public String toString() {
			return "User [login_name=" + login_name + ", password=" + password + ", pow_id=" + pow_id + ", varname="
					+ varname + ", email=" + email + ", mobile=" + mobile + ", last_time=" + last_time + ", reg_time="
					+ reg_time + "]";
		}
	    
	 
   
}
