<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../../CSS/index.css" />
<title>网上选课系统-首页</title>
</head>
<body>
	<h1>欢迎来到网上选课系统</h1>

	<br />
	<br />	
	<br />
	 <form action="checkindex.jsp" method="post"> 
	<!--<form action="/LoginServlet" method="post">-->
		<table>
			<tr>
				<th>用户名：</th>
				<td><input type="text" name="uname" /></td>
			</tr>

			<tr>
				<th>密码：</th>
				<td><input type="password" name="upwd" /></td>
			</tr>
			<tr>
				<td>用户类型：</td>
				<td><select name="login-identity">
						<option value="select">--请选择登录身份--</option>
						<option value="student">学生</option>
						<option value="teacher">教师</option>
						<option value="admin">管理员</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><input
					type="submit" value="登录" /></td>
			</tr>
		</table>
	</form>
	
				<div class="banq">
					<span>版权&copy;a-cper-cpu</span><br>
					<span>https://github.com/a-cper-cpu</span>
				</div>
	
</body>
</html>