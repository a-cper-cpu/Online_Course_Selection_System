<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../../CSS/student_frame.css" />
<title>网上选课系统-学生主页</title>
</head>
<body>

	<%
	
		String sId=request.getParameter("sId");
		
		request.setAttribute("sId", sId);
	
	%>

	<div class="head">
	
		<p><span class="s1" style="text-align:center;">学生操作界面</span>
		
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=sId%>您好，欢迎进入学生操作界面</p>
		
	</div>
	
	<div class="swanky_wrapper">
			<input id="Dashboard" name="radio" type="radio">
			<label for="Dashboard">
				<img src="../../images/cp.png">
				<span>个人信息管理</span>
				<div class="lil_arrow"></div>
				<div class="bar"></div>
				<div class="swanky_wrapper__content">
					<ul>
					
					
					
						<a href="personal_information.jsp?sId=<%=sId%>"  target="iframe"><li>个人信息编辑</li></a>
						
					</ul>
				</div>
			</label>
			<input id="Sales" name="radio" type="radio">
			<label for="Sales">
				<img src="../../images/del.png">
				<span>密码管理</span>
				<div class="lil_arrow"></div>
				<div class="bar"></div>
				<div class="swanky_wrapper__content">
					<ul>
						<a  href="Password_Update.jsp?sId=<%=sId%>" target="iframe"><li>密码修改</li></a>
						
					</ul>
				</div>
			</label>
			<input id="Messages" name="radio" type="radio">
			<label for="Messages">
				<img src="../../images/mess.png">
				<span>成绩管理</span>
				<div class="lil_arrow"></div>
				<div class="bar"></div>
				<div class="swanky_wrapper__content">
					<ul>
						<a   href="LookGrade.jsp?sId=<%=sId%>" target="iframe"><li>成绩查询</li></a>

						<a    href="SortGrade.jsp?sId=<%=sId%>" target="iframe"><li>成绩排名</li></a>
						
					</ul>
				</div>
			</label>
			<input id="Users" name="radio" type="radio">
			<label for="Users">
				<img src="../../images/users.png">
				<span>选课管理</span>
				<div class="lil_arrow"></div>
				<div class="bar"></div>
				<div class="swanky_wrapper__content">
					<ul>
						<a   href="LookCourse.jsp" target="iframe"><li>所有课程</li></a>
						<a   href="SelectCourse.jsp" target="iframe"><li>选课</li></a>
						<a   href="LookSelectCourse.jsp?sId=<%=sId%>" target="iframe"><li>选课查询</li></a>

						<a   href="QuitCourse.jsp?sId=<%=sId%>" target="iframe"><li>退选</li></a>
						
					</ul>
				</div>
			</label>
			
			
			<input id="Quit" name="radio" type="radio">
			<label for="Quit">
				<img src="../../images/users.png">
				<span>注销</span>
				<div class="lil_arrow"></div>
				<div class="bar"></div>
				<div class="swanky_wrapper__content">
					<ul>
						<a href="../index/index.jsp"><li>退出</li></a>
						
						
					</ul>
				</div>
			</label>
			
		</div>
	
	
		<div class="iframe">
			<iframe src="" width="900px" height="500px" name="iframe"></iframe>
		</div>
	
</body>
</html>