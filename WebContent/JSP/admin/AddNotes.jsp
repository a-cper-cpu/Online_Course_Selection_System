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
	<h1 style="text-align:center;">添加课程界面</h1>
	<%
		String aId = (String)request.getParameter("aId");
		request.setAttribute("aId", aId);
	%>
	<form action="checkAddNotes.jsp?aId=<%=aId %>" method="post">
		<table>
			<tr>
			<!--  <td>管理员号：<input type="text" name="aId" /></td>-->	
				
				<td>&nbsp;</td>
				<td>日志：<input type="text" name="editor1" style="width:500px;height:100px"  /></td>
				<td>&nbsp;</td>
				
				
			</tr>
			
			<tr>&nbsp;</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<input type="submit" value="录入" />
				</td>
				<td colspan="2" style="text-align:center;">
				<input type="reset" value="重置" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>