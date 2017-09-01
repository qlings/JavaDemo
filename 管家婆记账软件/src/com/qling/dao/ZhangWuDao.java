package com.qling.dao;
/*
 *  实现对数据表 gjp_zhangwu 数据增删改查操作
 */

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.qling.domain.ZhangWu;
import com.qling.tools.JDBCUtils;

public class ZhangWuDao {
	//创建queryRunner对象
	private QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
	
	//删除
	public void deleteZhangWu(int zwid) {
		try {
			//删除行的sql
			String sql = "DELETE FROM gjp_zhangwu WHERE zwid=?";
			qr.update(sql, zwid);
		} catch (SQLException ex) {
			System.out.println(ex);
			throw new RuntimeException("删除账务失败");
		}
	}

	//修改
	public void editZhangWu(ZhangWu zw) {
		try {
			//更新行的SQL
			String sql = "UPDATE gjp_zhangwu SET flname=?,money=?,zhanghu=?,createtime=?,description=? WHERE zwid=?";
			//定义对象数组，封装所有数据
			Object[] params = {zw.getFlname(),zw.getMoney(),zw.getZhanghu(),zw.getCreatetime(),zw.getDescription(),zw.getZwid()};
			qr.update(sql, params);
		} catch (SQLException ex) {
			System.out.println(ex);
			throw new RuntimeException("编辑账务失败");
		}
		
	}

	//添加
	public void addZhangWu(ZhangWu zw) {
		try{
			 //添加数据的sql
			String sql = "INSERT INTO gjp_zhangwu (flname,money,zhanghu,createtime,description) VALUES(?,?,?,?,?)";
			//创建对象数组
			Object[] params = {zw.getFlname(),zw.getMoney(),zw.getZhanghu(),zw.getCreatetime(),zw.getDescription()};
			qr.update(sql, params);
		}catch(SQLException ex) {
			System.out.println(ex);
			throw new RuntimeException("账务添加失败");
		}
	}
	//条件查询
	public List<ZhangWu> select(String startDate,String endDate){
		try{
			//拼写条件查询的SQL语句
			String sql = "SELECT * FROM gjp_zhangwu WHERE createtime BETWEEN ? AND ?";
			//定义对象数组,存储?占位符
			Object[] params = {startDate,endDate};
			//调用qr对象的方法query查询数据表,获取结果集
			return qr.query(sql, new BeanListHandler<>(ZhangWu.class),params);
		}catch(SQLException ex){
			System.out.println(ex);
			throw new RuntimeException("条件查询失败");
		}
	}
	
	//查询所有
	public List<ZhangWu> selectAll(){
		try{
			//查询账务数据的SQL语句
			String sql = "SELECT * FROM gjp_zhangwu";
			//调用query方法,结果集BeanListHandler
			List<ZhangWu> list = qr.query(sql, new BeanListHandler<>(ZhangWu.class));
			return list;
		}catch(SQLException ex){
			System.out.println(ex);
			throw new RuntimeException("查询所有账务失败");
		}
	}
	
	
}
