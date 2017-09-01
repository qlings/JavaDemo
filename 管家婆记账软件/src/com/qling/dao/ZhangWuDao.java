package com.qling.dao;
/*
 *  ʵ�ֶ����ݱ� gjp_zhangwu ������ɾ�Ĳ����
 */

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.qling.domain.ZhangWu;
import com.qling.tools.JDBCUtils;

public class ZhangWuDao {
	//����queryRunner����
	private QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
	
	//ɾ��
	public void deleteZhangWu(int zwid) {
		try {
			//ɾ���е�sql
			String sql = "DELETE FROM gjp_zhangwu WHERE zwid=?";
			qr.update(sql, zwid);
		} catch (SQLException ex) {
			System.out.println(ex);
			throw new RuntimeException("ɾ������ʧ��");
		}
	}

	//�޸�
	public void editZhangWu(ZhangWu zw) {
		try {
			//�����е�SQL
			String sql = "UPDATE gjp_zhangwu SET flname=?,money=?,zhanghu=?,createtime=?,description=? WHERE zwid=?";
			//����������飬��װ��������
			Object[] params = {zw.getFlname(),zw.getMoney(),zw.getZhanghu(),zw.getCreatetime(),zw.getDescription(),zw.getZwid()};
			qr.update(sql, params);
		} catch (SQLException ex) {
			System.out.println(ex);
			throw new RuntimeException("�༭����ʧ��");
		}
		
	}

	//���
	public void addZhangWu(ZhangWu zw) {
		try{
			 //������ݵ�sql
			String sql = "INSERT INTO gjp_zhangwu (flname,money,zhanghu,createtime,description) VALUES(?,?,?,?,?)";
			//������������
			Object[] params = {zw.getFlname(),zw.getMoney(),zw.getZhanghu(),zw.getCreatetime(),zw.getDescription()};
			qr.update(sql, params);
		}catch(SQLException ex) {
			System.out.println(ex);
			throw new RuntimeException("�������ʧ��");
		}
	}
	//������ѯ
	public List<ZhangWu> select(String startDate,String endDate){
		try{
			//ƴд������ѯ��SQL���
			String sql = "SELECT * FROM gjp_zhangwu WHERE createtime BETWEEN ? AND ?";
			//�����������,�洢?ռλ��
			Object[] params = {startDate,endDate};
			//����qr����ķ���query��ѯ���ݱ�,��ȡ�����
			return qr.query(sql, new BeanListHandler<>(ZhangWu.class),params);
		}catch(SQLException ex){
			System.out.println(ex);
			throw new RuntimeException("������ѯʧ��");
		}
	}
	
	//��ѯ����
	public List<ZhangWu> selectAll(){
		try{
			//��ѯ�������ݵ�SQL���
			String sql = "SELECT * FROM gjp_zhangwu";
			//����query����,�����BeanListHandler
			List<ZhangWu> list = qr.query(sql, new BeanListHandler<>(ZhangWu.class));
			return list;
		}catch(SQLException ex){
			System.out.println(ex);
			throw new RuntimeException("��ѯ��������ʧ��");
		}
	}
	
	
}
