package com.southwind.repository.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.PreparedStatement;
import com.southwind.entity.Student;
import com.southwind.repository.StudentRepository;
import com.southwind.utils.JDBCTools;

public class StudentRepositoryImpl implements StudentRepository{

	@Override
	public Student login(String username, String password) {
		
		Connection connection = JDBCTools.getConnection();
		String sql="select * from student where sId=?  and sPass=? ";
		PreparedStatement stmt = null;
		ResultSet rs=null;
		Student student =null;
		try{
		stmt = connection.prepareStatement(sql);
		stmt.setString(1, username);
		stmt.setString(2, password);
		rs=stmt.executeQuery();
			
			if(rs.next()) {
				student=new Student(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			JDBCTools.release(connection, stmt, rs);
		}
		
		return student;
		
	}
	
}
