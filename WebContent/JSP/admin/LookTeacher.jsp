<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网上选课系统-查看教师</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8");%>  
	<h1 style="text-align:center;">查看教师界面</h1>
	
	<%
	
	

	
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
		
		
		String sql="select * from teadetail";
		
		rs=stmt.executeQuery(sql);
		%>
		
		<table   border="1" width="900px">
				<tr>
					<th>教师号:</th>
					<th>姓名:</th>
					<th>性别:</th>
					<th>年龄:</th>
					<th>手机号:</th>
					<th>地址:</th>
					<th>学历:</th>
					<th>职称:</th>
					<th>毕业院校:</th>
					<th>健康状况:</th>
					<th>密码:</th>
					<th>系部:</th>
				</tr>
		
		
		<% 
		while(rs.next()){
			
			
			%>
			
			
				<tr>
					<td><%=rs.getString(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(4) %></td>
					<td><%=rs.getString(5) %></td>
					<td><%=rs.getString(6) %></td>
					<td><%=rs.getString(7) %></td>
					<td><%=rs.getString(8) %></td>
					<td><%=rs.getString(9) %></td>
					<td><%=rs.getString(10) %></td>
					<td><%=rs.getString(11) %></td>
					<td><%=rs.getString(12) %></td>
				</tr>
			
			
			
			<%
			
			
			
				} 
		
		
	}catch(SQLException e){
		e.printStackTrace();
		
	}
	finally{
		
	
	}
			
			%>
			</table>
			
	
</body>
</html>