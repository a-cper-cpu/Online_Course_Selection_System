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
	<h1 style="text-align:center;">选课界面</h1>
	
	<form action="checkSelectCourse.jsp" method="post">
		<table>
			<tr>
				<td>课程编号：<input type="text" name="cId" /></td>
				<td>&nbsp;</td>
				<td>学号：<input type="text" name="sId" /></td>
				<td>&nbsp;</td>
				<td>分数：<input type="text" name="grade" Readonly="true" /></td>
			</tr>
			<tr>&nbsp;</tr>
			
			<tr>
				<td colspan="2" style="text-align:center;">
				<input type="submit" value="选课" />
				</td>
				<td colspan="2" style="text-align:center;">
				<input type="reset" value="重置" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>