package com.qling.view;
/*
 *  用户操作界面
 *  数据传递给controller层
 */

import java.util.List;
import java.util.Scanner;

import com.qling.dao.ZhangWuDao;
import com.qling.domain.ZhangWu;

public class MainView {
	private ZhangWuDao dao = new ZhangWuDao();
	/*
	 *  实现界面效果
	 *  接收用户的输入
	 *  根据数据,调用不同的功能方法
	 */
	public void run(){
		//创建Scanner类对象,接受键盘输入
		Scanner sc = new Scanner(System.in);
		while(true){
			System.out.println("---------------管家婆家庭记账软件---------------");
			System.out.println("1.添加账务　2.编辑账务　3.删除账务　4.查询账务　5.退出系统");
			System.out.println("请输入要操作的功能序号[1-5]:");
			//接收用户的菜单选择
			int choose = sc.nextInt();
			//对选择的菜单判断,调用不同的功能
			switch(choose){
			case 1:
			   // 选择添加账务,调用添加账务的方法
				addZhangWu();
				break;
			case 2:
				// 选择的编辑账务,调用编辑账务方法
				editZhangWu();
				break;
			case 3:
				// 选择的删除账务,调用删除账务方法
				deleteZhangWu();
				break;
			case 4:
				// 选择的是查询账务,调用查询方法
				selectZhangWu();
				break;
			case 5:
				System.exit(0);
				break;
			}
		}
	}
	
	//输入3,删除账务
	public void deleteZhangWu() {
		//查询所有账务数据,选择一项删除
		selectAll();
		System.out.println("选择的是删除功能，请输入序号即可");
		int zwid = new Scanner(System.in).nextInt();
		//调用dao层
		dao.deleteZhangWu(zwid);
		System.out.println("删除账务成功");
	}

	//输入2,编辑账务
	public void editZhangWu() {
		//查询所有账务数据,选择一项修改
		selectAll();
		System.out.println("选择的是编辑功能，请输入数据");
		Scanner sc = new Scanner(System.in);
		System.out.print("请输入ID");
		int zwid = sc.nextInt();
		System.out.println("输入分类名称");
		String flname = sc.next();
		System.out.println("输入金额");
		double money = sc.nextDouble();
		System.out.println("输入账户");
		String zhanghu = sc.next();
		System.out.println("输入日期：格式XXXX-XX-xx");
		String createtime = sc.next();
		System.out.println("输入具体描述");
		String description = sc.next();
		//将用户输入的数据，封装到ZhangWu对象中
		ZhangWu zw = new ZhangWu(zwid, flname, money, zhanghu, createtime, description);
		//调用dao层
		dao.editZhangWu(zw);
		System.out.println("账务编辑成功");
	}

	//输入1,添加账务
	public void addZhangWu() {
		System.out.println("选择的添加账务功能，请输入以下内容");
		Scanner sc = new Scanner(System.in);
		System.out.println("输入分类名称");
		String flname = sc.next();
		System.out.println("输入金额");
		double money = sc.nextDouble();
		System.out.println("输入账户");
		String zhanghu = sc.next();
		System.out.println("输入日期：格式XXXX-XX-xx");
		String createtime = sc.next();
		System.out.println("输入具体描述");
		String description = sc.next();
		//将用户输入的所有参数，封装成ZhangWu对象
		ZhangWu zw = new ZhangWu(0, flname, money, zhanghu, createtime, description);
		dao.addZhangWu(zw);
		System.out.println("恭喜添加账务成功");
	}
	
	//输入4,查询账务
	 public void selectZhangWu(){
		 System.out.println("1. 查询所有    2. 条件查询");
		 Scanner sc = new Scanner(System.in);
		 int selectChooser = sc.nextInt();
		 //根据用户的选择,调用不同的查询方法
		 switch(selectChooser){
		 case 1:
			 //选择的查询所有,调用查询所有的方法
			 selectAll();
			 break;
		 case 2:
			 //选的条件查询,调用带有查询条件的方法
			 select();
			 break;
		 }
	 }
	 /*
	  * 定义方法,实现查询所有的账务数据
	  */
	 public void selectAll(){
		 //调用dao层中的方法,查询所有的账务数据
		 List<ZhangWu> list = dao.selectAll();
		 if(list.size()!=0)
			 print(list);
		 else
			 System.out.println("没有查询到数据");
	 }
	
	 /*
	  * 定义方法,实现条件查询账务数据
	  * 提供用户的输入日期,开始日期结束日期
	  */
	 public void select(){
		 System.out.println("选择条件查询,输入日期格式XXXX-XX-XX");
		 Scanner sc = new Scanner(System.in);
		 System.out.print("请输入开始日期:");
		 String startDate = sc.nextLine();
		 System.out.print("请输入结果日期:");
		 String endDate = sc.nextLine();
		 //调用dao层的方法,传递日期,获取查询结果集
		 List<ZhangWu> list = dao.select(startDate, endDate);
		 if(list.size()!=0)
			 print(list);
		 else
			 System.out.println("没有查询到数据");
	 }
	 
	 //输出账务数据方法,接收List集合,遍历集合,输出表格
	 private void print(List<ZhangWu> list) {
			//输出表头
			 System.out.println("ID\t\t类别\t\t账户\t\t金额\t\t时间\t\t说明");
			 //遍历集合,结果输出控制台
			 for(ZhangWu zw : list){
				 System.out.println(zw.getZwid()+"\t\t"+zw.getFlname()+"\t\t"+zw.getZhanghu()+"\t\t"+
			     zw.getMoney()+"\t\t"+zw.getCreatetime()+"\t"+zw.getDescription());
			 }
		}
}
