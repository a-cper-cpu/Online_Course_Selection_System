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
		
		
		String sId=request.getParameter("sId");
		

		String sName=request.getParameter("sName");;
		String sSex=request.getParameter("sSex");;
		String sMobil=request.getParameter("sMobil");;
		String sAddress=request.getParameter("sAddress");;
		String sPass=request.getParameter("sPass");;
		String sdId=request.getParameter("sdId");;
		String sClass=request.getParameter("sClass");;
		
		
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
		
			
			
			
			
			String sql="update student set sMobil='"+sMobil+"',sAddress='"+sAddress+"' where sId='"+sId+"'";
			
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