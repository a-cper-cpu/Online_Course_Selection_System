<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网上选课系统-录入教师信息界面</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8");%>  
	<h1 style="text-align:center;">录入教师信息界面</h1>
	
	<form action="checkEnterTeacher.jsp" method="post">
		<table>
			<tr>
				<td>教师号：<input type="text" name="teaID" /></td>
				<td>&nbsp;</td>
				<td>姓名：<input type="text" name="teaName" /></td>
				<td>&nbsp;</td>
				<td>性别：<input type="text" name="teaSex" /></td>
			</tr>
			<tr>&nbsp;</tr>
			<tr>
				<td>年龄：<input type="text" name="teaAge" /></td>
				<td>&nbsp;</td>
				<td>学历：<input type="text" name="teaedu" /></td>
				<td>&nbsp;</td>
				<td>职称：<input type="text" name="teatitle" /></td>
			</tr>
			<tr>&nbsp;</tr>
			<tr>
				<td>毕业院校：<input type="text" name="teaSchool" /></td>
				<td>&nbsp;</td>
				<td>健康状况：<input type="text" name="teaHealth" /></td>
				<td>&nbsp;</td>
				<td>密码：<input type="text" name="teaPass" /></td>
			</tr>
				<tr>&nbsp;</tr>
			<tr>
				<td>所在系号：<input type="text" name="teaDid" /></td>
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