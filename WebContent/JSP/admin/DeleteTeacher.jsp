<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网上选课系统-删除教师</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8");%>  
		
			<form action="checkDeleteTeacher.jsp" method="post">
		<table>
			<tr>
				<td>教师号：<input type="text" name="teaId" /></td>
				<td>&nbsp;</td>
				<td>姓名（可不填）：<input type="text" name="teaName" /></td>
				
			</tr>
			<tr>&nbsp;</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<input type="submit" value="删除" />
				</td>
				<td colspan="2" style="text-align:center;">
				<input type="reset" value="重置" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>