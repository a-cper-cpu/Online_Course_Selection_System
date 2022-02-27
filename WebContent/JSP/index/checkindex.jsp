
<%@page import="javax.print.attribute.standard.MediaSize.Other"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@page import="java.sql.*"%>
<%@page import="java.util.Scanner"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--  <%
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
			
				
				String id=request.getParameter("uname");
			
				String pwd=request.getParameter("upwd");
				
				String sql="select count(*) from admin_login where aId='"+id+"' and aPass='"+pwd+"'";
				rs=stmt.executeQuery(sql);
				
				int count = -1;
				if(rs.next()){
					count = rs.getInt(1);
				}
				
				if(count>0){
					System.out.println("登录成功！");
				}else{
					System.out.println("登录失败！");
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
			
			
		%>--%>
	<jsp:useBean id="adminDao" class="com.login.dao.AdminDao" scope="page" />

	<jsp:useBean id="studentDao" class="com.login.dao.StudentDao"
		scope="page" />

	<jsp:useBean id="teacherDao" class="com.login.dao.TeacherDao"
		scope="page" />

	<%
		String id = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		String identity = request.getParameter("login-identity");

		switch (identity) {
		case "student":
			int result = studentDao.login(id, pwd);
			if (result > 0) {
				out.print("登录成功！");

				//request.setAttribute("sId", id);
				response.sendRedirect("../student/student_Mainframe.jsp?sId=" + id);

			} else if (result == 0) {
				out.print("用户名或密码有误！");
			} else {
				out.print("系统异常！！！");
			}
			break;

		case "teacher":
			int result1 = teacherDao.login(id, pwd);
			if (result1 > 0) {
				out.print("登录成功！");
				response.sendRedirect("../teacher/teacher_Mainframe.jsp?teaId=" + id);

			} else if (result1 == 0) {
				out.print("用户名或密码有误！");
			} else {
				out.print("系统异常！！！");
			}

			break;

		case "admin":
			int result2 = adminDao.login(id, pwd);
			if (result2 > 0) {
				out.print("登录成功！");
				response.sendRedirect("../admin/Admin_Mainframe.jsp?aId=" + id);

			} else if (result2 == 0) {
				out.print("用户名或密码有误！");
			} else {
				out.print("系统异常！！！");
			}
			break;

		default:

			out.print("请选择具体身份！");
			break;

		}
	%>

</body>
</html>