package com.admin.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class checkEnterTeacherDao {
	public int login(String teaID,String teaName,String teaSex,String teaAge,String teaedu,String teatitle,String teaSchool,String teaHealth,String teaPass,String teaDid) {//1:����ɹ� 0:����ʧ�� (�û�������������) -1����ϵͳ�쳣
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
			
			
			String sql="insert into  teadetail(teaID,teaName,teaSex,teaAge,teaedu,teatitle,teaSchool,teaHealth,teaPass,teaDid) values ('"+teaID+"','"+teaName+"','"+teaSex+"','"+teaAge+"','"+teaedu+"','"+teatitle+"','"+teaSchool+"','"+teaHealth+"','"+teaPass+"','"+teaDid+"')";
			
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
