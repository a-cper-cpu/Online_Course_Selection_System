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
	<jsp:useBean id="checkEnterStudentsDao" class="com.admin.dao.checkEnterStudentsDao" scope="page" />
		<%
		
			String sId = request.getParameter("sId");
			String sName = request.getParameter("sName");
			String sSex=request.getParameter("sSex");
			String sPass=request.getParameter("sPass");
			String sdId=request.getParameter("sdId");
			String sClass=request.getParameter("sClass");
			

					int result=checkEnterStudentsDao.login(sId,sName,sSex,sPass,sdId,sClass);
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