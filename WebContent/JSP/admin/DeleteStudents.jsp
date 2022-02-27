<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网上选课系统-删除学生</title>
</head>
<body>
		<%request.setCharacterEncoding("utf-8");%>  
		
			<form action="checkDeleteStudent.jsp" method="post">
		<table>
			<tr>
				<td>学号：<input type="text" name="sId" /></td>
				<td>&nbsp;</td>
				<td>姓名（可不填）：<input type="text" name="sName" /></td>
				
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