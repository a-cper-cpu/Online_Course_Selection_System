<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8");%>  
	<h1 style="text-align:center;">教室信息界面</h1>
	
	<%
	

	
	String sDBDriver="com.mysql.jdbc.Driver";
	String sConnStr="jdbc:mysql://localhost:3306/online course selection system?serverTimezone=CTT&useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true";
	String username="root";
	String password="123456";


	Connection	connection =null;
	Statement stmt = null;
	ResultSet rs=null;
	ResultSet rs1=null;
	try{
		
		Class.forName(sDBDriver);
		connection = DriverManager.getConnection(sConnStr,username,password);
		stmt = connection.createStatement();
	
		
		String teaId=request.getParameter("teaId");
		
		int i=0;
		String sql="select * from course where tId='"+teaId+"'";
		
		rs=stmt.executeQuery(sql);
		%>
		
		<table border="1" width="900px">
				<tr>
					<th>教室名称:</th>
					<th>教室容量(人数)：</th>
					<th>上课时间：</th>
				</tr>
		
		
		<% 
		while(rs.next()){
				
	//	}
			
		///	String sql1="select * from room where roomName='"+rs.getString(6)+"'";
			
		//	rs1=stmt.executeQuery(sql);
			
		//	while(rs1.next()){
			
			%>
			
			
				<tr>
					<td><%=rs.getString(6) %></td>
					<td><%=rs.getString(7) %></td>
					<!-- <td><%=rs.getString(3) %></td> -->
					<td><%=0 %></td>
				</tr>
			
			
			
			<%
			
			//}
			
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