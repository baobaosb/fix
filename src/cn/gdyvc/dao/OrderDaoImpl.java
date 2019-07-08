package cn.gdyvc.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cn.gdyvc.model.Order;
import cn.gdyvc.model.User;

public class OrderDaoImpl implements OrderDao{
	//定义JdbcTemplate属性及其getter和setter方法
	private JdbcTemplate jdbcTemplate;
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public int addNewOrder(Order order) {
		// TODO Auto-generated method stub
					//定义SQL语句
				String sql = "insert into f_order(name,stuId,mobile,type,place,descrip,cre_time,status) values(?,?,?,?,?,?,?,?)";
				//存放SQL语句的参数
					Object[] params =new Object[]{
						order.getName(),
						order.getStuId(),
						order.getMobile(),
						order.getType(),
						order.getPlace(),
						order.getDescrip(),
						order.getCre_time(),
						order.getStatus()
					}; 
					//执行SQL，获取返回结果
					int flag = this.jdbcTemplate.update(sql, params);
					return flag;
	}
	
	/**
	 * 根据学号更新状态(已受理或未受理)
	 */
	@Override
	public int updateOrder(Order order) {
		// TODO Auto-generated method stub
		//定义SQL语句
		String sql = "update f_order set  status = ? where id = ?";
		 //存放SQL语句的参数
		Object[] params =new Object[]{ 
				order.getStatus(),
				order.getId()				
			}; 
		//执行SQL，获取返回结果
		int flag = this.jdbcTemplate.update(sql, params);
		return flag;
	}

	/**
	 * 根据维修单删除订单
	 */
	public int deleteOrderById(int id){
		// TODO Auto-generated method stub
			//定义SQL语句
			String sql  = "delete from f_order where id = ?";
			//执行SQL，获取返回结果
			int flag = this.jdbcTemplate.update(sql, id);
			return flag;
		}
	
	
	/**
	 * 根据学号取最近一条报修记录
	 */
	@Override
	public List<Order> findOrderById(String id) {
		// TODO Auto-generated method stub
			//定义SQL语句
		String sql = "select * from f_order where stuId = ?";
			/*
			 * 提供默认实现类 ParameterizedBeanPropertyRowMapper，使用此类要求数据表的列必须和java对象的属性对应
			 *  ParameterizedBeanPropertyRowMapper将结果集通过java的反射机制映射到java对象中
			 */
			RowMapper<Order> rowMapper = BeanPropertyRowMapper
			                                       .newInstance(Order.class);
			//使用queryForObject方法查询，返回单行记录
			return this.jdbcTemplate.query(sql, rowMapper,id);
		}
	

	@Override
	public List<Order> findAllOrder() {
		// TODO Auto-generated method stub
		//定义SQL语句
				String sql = "select * from f_order";		
				/*
				 * 提供默认实现类 ParameterizedBeanPropertyRowMapper ， javabean属性和表的字段必须一致
				   ParameterizedBeanPropertyRowMapper将结果集通过java的反射机制映射到java对象中
				 */
				RowMapper<Order> rowMapper = BeanPropertyRowMapper
				                                      .newInstance(Order.class);
				//使用query方法执行查询，并返回一个集合
				return this.jdbcTemplate.query(sql, rowMapper);
	}
	
	

}
