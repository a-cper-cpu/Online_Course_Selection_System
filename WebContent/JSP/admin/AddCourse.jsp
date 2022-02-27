<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网上选课系统-添加课程</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8");%>  
	<h1 style="text-align:center;">添加课程界面</h1>
	
	<form action="checkAddCourse.jsp" method="post">
		<table>
			<tr>
				<td>课程号：<input type="text" name="cId" /></td>
				<td>&nbsp;</td>
				<td>课程名称：<input type="text" name="cName" /></td>
				<td>&nbsp;</td>
				<td>教师号：<input type="text" name="tId" /></td>
			</tr>
			<tr>&nbsp;</tr>
			<tr>
				<td>学分：<input type="text" name="credit" /></td>
				<td>&nbsp;</td>
				<td>学时：<input type="text" name="period" /></td>
				<td>&nbsp;</td>
				<td>上课地点：<input type="text" name="cPlace" /></td>
			</tr>
			
			<tr>&nbsp;</tr>
			<tr>
				<td>总人数：<input type="text" name="cNumAll" /></td>
				<td>&nbsp;</td>
				<td>已选人数：<input type="text" name="cNum" /></td>
				<td>&nbsp;</td>
				<td>院系号：<input type="text" name="dId" /></td>
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