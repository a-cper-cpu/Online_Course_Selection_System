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
	<jsp:useBean id="checkAddClassDao" class="com.admin.dao.checkAddClassDao" scope="page" />
		<%
		
		
		
		
			String Class= request.getParameter("Class");
			String dId = request.getParameter("dId");
			
			

					int result=checkAddClassDao.login(Class, dId);
					if(result >0){
						out.print("插入成功！");
						
						
					}else if(result == 0){
						out.print("插入失败！");
					}else{
						out.print("系统异常！！！");
					}
		%>
</body>
</html>