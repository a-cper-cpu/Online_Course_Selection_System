package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TeacherDao {
	public int login(String id,String pwd) {//1:登录成功 0:登录失败 (用户名或密码有误) -1代表系统异常
		String sDBDriver="com.mysql.jdbc.Driver";
		String sConnStr="jdbc:mysql://localhost:3306/online course selection system?serverTimezone=CTT&useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true";
		String username="root";
		String password="123456";
	
	
		Connection	connection =null;
		Statement stmt = null;
		ResultSet rs=null;
		try{
			
			Class.forName(sDBDriver);
			connection = DriverManager.getConnection(sConnStr,username,password);
			stmt = connection.createStatement();
		
			
			//String id=request.getParameter("uname");
		
			//String pwd=request.getParameter("upwd");
			
			String sql="select count(*) from teadetail where teaID='"+id+"' and teaPass='"+pwd+"'";
			rs=stmt.executeQuery(sql);
			
			int count = -1;
			if(rs.next()){
				count = rs.getInt(1);
			}
			
			//if(count>0){
			//	System.out.println("登录成功！");
			//}else{
			//	System.out.println("登录失败！");
		//	}
			
			return count;
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			return -1;
			
		}catch(SQLException e){
			e.printStackTrace();
			return -1;
		}catch(Exception e){
			e.printStackTrace();
			return -1;
		}
		finally{
			try{
				if(rs!=null) rs.close();
				if(stmt!=null) stmt.close();
				if(connection!=null) connection.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
}
