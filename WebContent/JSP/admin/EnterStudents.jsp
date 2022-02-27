<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../../CSS/EntryStudents.css" />
<title>网上选课系统-录入学生信息界面</title>

</head>
<body>	

	<%request.setCharacterEncoding("utf-8");%>  
	<h1 style="text-align:center;">录入学生信息界面</h1>
	
	<form action="checkEnterStudents.jsp" method="post">
		<table>
			<tr>
				<td>学号：<input type="text" name="sId" /></td>
				<td>&nbsp;</td>
				<td>姓名：<input type="text" name="sName" /></td>
				<td>&nbsp;</td>
				<td>性别：<input type="text" name="sSex" /></td>
			</tr>
			<tr>&nbsp;</tr>
			<tr>
				<td>密码：<input type="text" name="sPass" /></td>
				<td>&nbsp;</td>
				<td>系部：<input type="text" name="sdId" /></td>
				<td>&nbsp;</td>
				<td>班级：<input type="text" name="sClass" /></td>
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