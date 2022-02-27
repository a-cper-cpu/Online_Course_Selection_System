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
		
		
		String teaId=request.getParameter("teaId");
		
		String sDBDriver="com.mysql.jdbc.Driver";
		String sConnStr="jdbc:mysql://localhost:3306/online course selection system?serverTimezone=CTT&useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true";
		String username="root";
		String password="123456";
		
		
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
		
		Connection	connection =null;
		Statement stmt = null;
		ResultSet rs=null;
		
		
		
		
		try{
			
			Class.forName(sDBDriver);
			connection = DriverManager.getConnection(sConnStr,username,password);
			stmt = connection.createStatement();
		
			
		
			
			
			String sql="select * from teadetail where teaId='"+teaId+"'";
			
			rs =stmt.executeQuery(sql);
			
			if(rs==null){
				
				return;
			}
			
			while(rs.next()){
				request.setAttribute("rs", rs);
				
				request.setAttribute("teaId", teaId);
						
				teaName=rs.getString(2);
				request.setAttribute("teaName", teaName);
				
				teaSex=rs.getString(3);
				request.setAttribute("teaSex", teaSex);
				
				teaAge=rs.getString(4);
				request.setAttribute("teaAge", teaAge);
				
				teaMobil=rs.getString(5);
				request.setAttribute("teaMobil", teaMobil);
				
				
				teaAddress=rs.getString(6);
				request.setAttribute("teaAddress", teaAddress);
				
				teaedu=rs.getString(7);
				request.setAttribute("teaedu", teaedu);
				
				teatitle=rs.getString(8);
				request.setAttribute("teatitle", teatitle);
				
				teaSchool=rs.getString(9);
				request.setAttribute("teaSchool", teaSchool);
				
				teaHealth=rs.getString(10);
				request.setAttribute("teaHealth", teaHealth);
				
				teaPass=rs.getString(11);
				request.setAttribute("teaPass", teaPass);
				
				teaDid=rs.getString(12);
				request.setAttribute("teaDid", teaDid);
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
	
	<form action="checkpersonal_information.jsp"   method="post">	
		<table>
			<tr>
				<td>教师号：<input  type="text" name="teaId" value=<%=teaId%> readonly="true" /></td>
				<td>&nbsp;</td>
				<td>姓名：<input type="text" name="teaName" value=<%=teaName%>  readonly="true" /></td>
				<td>&nbsp;</td>
				<td>性别：<input type="text"  name="teaSex" value=<%=teaSex%>  readonly="true" /></td>
				
			</tr>
			<tr>&nbsp;</tr>
			<tr>
			
				<td>年龄：<input type="text"  name="teaAge" value=<%=teaAge %>   readonly="true" /></td>
				<td>&nbsp;</td>
				
				<td>手机号：<input type="text"   name="teaMobil" value=<%=teaMobil %>  /></td>
				<td>&nbsp;</td>
				<td>地址：<input type="text"   name="teaAddress" value=<%=teaAddress %>  /></td>
				
				<td>教育背景：<input type="text"   name="teaedu" value=<%=teaedu %> readonly="true" /></td>
				
				
			</tr>
			
			<tr>&nbsp;</tr>
			
			<tr>
			
				<td>职称：<input type="text"   name="teatitle" value=<%=teatitle %> readonly="true" /></td>
				<td>&nbsp;</td>
				<td>毕业学校：<input type="text"value=<%=teaSchool %>   readonly="true" readonly="true" /></td>
				<td>&nbsp;</td>
				<td>健康状况：<input type="text" value=<%=teaHealth %>  readonly="true"  /></td>
				
				<td>系院：<input type="text" value=<%=teaDid %>  readonly="true" readonly="true" /></td>
				
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