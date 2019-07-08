package cn.gdyvc.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cn.gdyvc.model.User;

public class UserDaoImpl implements UserDao{
	//定义JdbcTemplate属性及其getter和setter方法
		private JdbcTemplate jdbcTemplate;
		public JdbcTemplate getJdbcTemplate() {
			return jdbcTemplate;
		}
		public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
			this.jdbcTemplate = jdbcTemplate;
		}
	
		//添加用户
		@Override
		public int addUser(User user) {
			// TODO Auto-generated method stub
			//定义SQL语句
			String sql = "insert into user(login_name,password,pow_id,varname,reg_time) values(?,?,?,?,?)";
			//存放SQL语句的参数
			Object[] params =new Object[]{
				user.getLogin_name(),
				user.getPassword(),
				user.getPow_id(),
				user.getVarname(),
				user.getReg_time()
			}; 
			//执行SQL，获取返回结果
			int flag = this.jdbcTemplate.update(sql, params);
			return flag;
		}
		
		/*
		 * 根据用户名修改权限
		 */
		@Override
		public int updateUser(User user) {
			// TODO Auto-generated method stub
			//定义SQL语句
			String sql = "update user set pow_id = ? where  login_name = ?";
			 //存放SQL语句的参数
			Object[] params =new Object[]{ 
					user.getPow_id(),
					user.getLogin_name()
					
				}; 
			//执行SQL，获取返回结果
			int flag = this.jdbcTemplate.update(sql, params);
			return flag;
		}
		
		/*
		 * 根据id删除用户
		 */
		@Override
		public int  deleteUserById(String  name) {
			// TODO Auto-generated method stub
			String sql  = "delete from user where login_name = ?";
			//执行SQL，获取返回结果
			int flag = this.jdbcTemplate.update(sql, name);
			return flag;
		}
		
		/*
		 * 根据id查找用户
		 */
		@Override
		public User findUserById(String id) {
			//定义SQL语句
			String sql = "select * from user where login_name = ?";
			/*
			 * 提供默认实现类 ParameterizedBeanPropertyRowMapper，使用此类要求数据表的列必须和java对象的属性对应
			 *  ParameterizedBeanPropertyRowMapper将结果集通过java的反射机制映射到java对象中
			 */
			RowMapper<User> rowMapper = BeanPropertyRowMapper
			                                       .newInstance(User.class);
			//使用queryForObject方法查询，返回单行记录
			return this.jdbcTemplate.queryForObject(sql, rowMapper, id);
		}
		
		/*
		 * 查询所有用户
		 */
		@Override
		public List<User> findAllUser() {
			// TODO Auto-generated method stub
			//定义SQL语句
			String sql = "select * from user";		
			/*
			 * 提供默认实现类 ParameterizedBeanPropertyRowMapper ， javabean属性和表的字段必须一致
			   ParameterizedBeanPropertyRowMapper将结果集通过java的反射机制映射到java对象中
			 */
			RowMapper<User> rowMapper = BeanPropertyRowMapper
			                                      .newInstance(User.class);
			//使用query方法执行查询，并返回一个集合
			return this.jdbcTemplate.query(sql, rowMapper);
		}
}
