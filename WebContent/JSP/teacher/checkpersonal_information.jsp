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
	
		<%
		String teaName=null;
		String teaSex=null;
		String teaAge=null;
		String teaMobil=null;
		String teaAddress=null;
		String teaedu=null;
		String teatitle=null;
		String teaSchool=null;
		String teaHealth=null;
		String teaPass=null;
		String teaDid=null;
		
		String teaId=request.getParameter("teaId");
		

		teaName=request.getParameter("teaName");
		teaSex=request.getParameter("teaSex");
		teaAge=request.getParameter("teaAge");
		teaMobil=request.getParameter("teaMobil");
		teaAddress=request.getParameter("teaAddress");
		teaedu=request.getParameter("teaedu");
		teatitle=request.getParameter("teatitle");
		teaSchool=request.getParameter("teaSchool");
		teaHealth=request.getParameter("teaHealth");
		teaPass=request.getParameter("teaPass");
		teaDid=request.getParameter("teaDid");
		
		
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
		
			
			
			
			
			String sql="update teadetail set teaMobil='"+teaMobil+"',teaAddress='"+teaAddress+"' where teaId='"+teaId+"'";
			
			stmt.execute(sql);
			%>
			   <script>

			    alert("修改成功！"); 
			   </script>
			
	<% 
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		
		}catch(SQLException e){
			e.printStackTrace();
		
		}catch(Exception e){
			e.printStackTrace();
			
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
		
	
		%>
</body>
</html>