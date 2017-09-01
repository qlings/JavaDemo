package com.qling.tools;
/*
 *  ��ȡ���ݿ����ӵĹ�����,ʵ��dbcp���ӳ�
 *  ���ݿ���:gjp
 *  ����:gjp_zhangwu
 */
import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
public class JDBCUtils{
    //����BasicDataSource����
	private static BasicDataSource datasource = new BasicDataSource();
	//��̬�����,ʵ�ֱ�Ҫ��������
	static{
		datasource.setDriverClassName("com.mysql.jdbc.Driver");
		datasource.setUrl("jdbc:mysql://localhost:3306/gjp");
		datasource.setUsername("root");
		datasource.setPassword("12345");
		//�������
		datasource.setMaxActive(10);
		//����������
		datasource.setMaxIdle(5);
		//��С��������
		datasource.setMinIdle(0);
		//��ʼ������
		datasource.setInitialSize(1);
	}
	public static DataSource getDataSource(){
		return datasource;
	}
}
