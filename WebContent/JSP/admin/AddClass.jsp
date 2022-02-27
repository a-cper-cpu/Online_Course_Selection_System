<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网上选课系统-添加教室</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8");%>  
	<h1 style="text-align:center;">添加教室界面</h1>
	
	<form action="checkAddClass.jsp" method="post">
		<table>
			<tr>
				<td>班级名：<input type="text" name="Class" /></td>
				<td>&nbsp;</td>
				<td>系部号：<input type="text" name="dId" /></td>
			
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