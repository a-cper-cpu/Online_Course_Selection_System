<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8");%>  
	<jsp:useBean id="checkQuitCoursesDao" class="com.student.dao.checkQuitCourseDao" scope="page" />
		<%
		
			String cId = request.getParameter("cId");
			String sId = request.getParameter("sId");
			String grade =request.getParameter("grade");
			

					int result=checkQuitCoursesDao.login(cId,sId);
					if(result >0){
						out.print("退选成功！");
						
						
					}else if(result == 0){
						out.print("退选失败！");
					}else{
						out.print("系统异常！！！");
					}
		
				
				
			
			
			
			
			
		%>
</body>
</html>