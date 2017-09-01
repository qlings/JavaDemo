package com.qling.tools;
/*
 *  获取数据库连接的工具类,实现dbcp连接池
 *  数据库名:gjp
 *  表名:gjp_zhangwu
 */
import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
public class JDBCUtils{
    //创建BasicDataSource对象
	private static BasicDataSource datasource = new BasicDataSource();
	//静态代码块,实现必要参数设置
	static{
		datasource.setDriverClassName("com.mysql.jdbc.Driver");
		datasource.setUrl("jdbc:mysql://localhost:3306/gjp");
		datasource.setUsername("root");
		datasource.setPassword("12345");
		//最大活动连接
		datasource.setMaxActive(10);
		//最大空闲连接
		datasource.setMaxIdle(5);
		//最小空闲连接
		datasource.setMinIdle(0);
		//初始化连接
		datasource.setInitialSize(1);
	}
	public static DataSource getDataSource(){
		return datasource;
	}
}
