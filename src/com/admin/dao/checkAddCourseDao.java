package com.admin.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class checkAddCourseDao {
	public int login(String cId,String cName,String tId,String credit,String period,String cPlace,String cNumAll,String cNum,String dId) {//1:插入成功 0:插入失败 (用户名或密码有误) -1代表系统异常
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
			
			
			String sql="insert into course(cId,cName,tId,credit,period,cPlace,cNumAll,cNum,dId) values ('"+cId+"','"+cName+"','"+tId+"','"+credit+"','"+period+"','"+cPlace+"','"+cNumAll+"','"+cNum+"','"+dId+"')";
			
			stmt.execute(sql);
			
			
			return 1;
			
			
	
			
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
