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
		
		String sDBDriver="com.mysql.jdbc.Driver";
		String sConnStr="jdbc:mysql://localhost:3306/online course selection system?serverTimezone=CTT&useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true";
		String username="root";
		String password="123456";
		
	
		String sPass=null;
	
		
		Connection	connection =null;
		Statement stmt = null;
		ResultSet rs=null;
		
		
		
		
		try{
			
			Class.forName(sDBDriver);
			connection = DriverManager.getConnection(sConnStr,username,password);
			stmt = connection.createStatement();
		
			
		
			
			
			String sql="select * from student where sId='"+sId+"'";
			
			rs =stmt.executeQuery(sql);
			
			if(rs==null){
				
				return;
			}
			
			while(rs.next()){
				request.setAttribute("rs", rs);
				
				request.setAttribute("sId", sId);
						
				
				
				sPass=rs.getString(6);
				request.setAttribute("sPass", sPass);
				
				
				  }
			
				
				
				
				
				
			
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
		
		
		<!--
		
		 rs.getString("sId")
		 rs.getString("sName")
		rs.getString("sSex")
		rs.getString("sMobil")
		rs.getString("sAddress")
		rs.getString("sPass")
		rs.getString("sdId")
		rs.getString("sClass")
		 -->
		
		
	<h1>录入学生信息界面</h1>
	
	<form action="checkPassword_Update.jsp"   method="post">	
		<table>
			<tr>
				<td>学号：<input type="text" name="sId" readonly="true" value=<%=sId %>  /></td>
				<td>密码：<input type="text" name="sPass" value=<%=sPass %>  /></td>
				
			</tr>
			<tr>&nbsp;</tr>
			
			<tr>
				<td colspan="2" style="text-align:center;">
				<input type="submit" value="保存" />
				</td>
				<td colspan="2" style="text-align:center;">
				<input type="reset" value="重置" />
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>