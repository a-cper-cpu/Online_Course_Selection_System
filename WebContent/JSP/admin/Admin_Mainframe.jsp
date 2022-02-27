<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../../CSS/admin_frame.css" />
<title>网上选课系统-管理员主页</title>
</head>
<body>
	
	<%
	String aId = (String)request.getParameter("aId");
	%>
	
	<div class="head">
	
		<p><span class="s1">管理员操作界面</span>
		
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=aId %>您好，欢迎进入管理员操作界面</p>
	</div>
	
	<div class="swanky_wrapper">

			<input id="Password" name="radio" type="radio">
			<label for="Password">
				<img src="../../images/cp.png">
				<span>密码管理</span>
				<div class="lil_arrow"></div>
				<div class="bar"></div>
				<div class="swanky_wrapper__content">
					<ul>
						<a href="PasswordUpdate.jsp?aid="+aId target="iframe"><li>修改密码</li></a>
						
					</ul>
				</div>
			</label>


			<input id="Dashboard" name="radio" type="radio">
			<label for="Dashboard">
				<img src="../../images/cp.png">
				<span>学生管理</span>
				<div class="lil_arrow"></div>
				<div class="bar"></div>
				<div class="swanky_wrapper__content">
					<ul>
						<a href="../admin/EnterStudents.jsp" target="iframe"><li>录入学生</li></a>
						<a  href="../admin/LookStudent.jsp" target="iframe"><li>查看学生</li></a>
						<a href="../admin/DeleteStudents.jsp" target="iframe"><li>删除学生</li></a>
						<li>选课管理</li>
						
					</ul>
				</div>
			</label>
			<input id="Sales" name="radio" type="radio">
			<label for="Sales">
				<img src="../../images/del.png">
				<span>教师管理</span>
				<div class="lil_arrow"></div>
				<div class="bar"></div>
				<div class="swanky_wrapper__content">
					<ul>
						<a href="../admin/EnterTeachers.jsp" target="iframe"><li>录入教师</li></a>
						<a href="../admin/LookTeacher.jsp" target="iframe"><li>查看教师</li></a>
						<a href="../admin/DeleteTeacher.jsp" target="iframe"><li>删除教师</li></a>
						
					</ul>
				</div>
			</label>
			<input id="Messages" name="radio" type="radio">
			<label for="Messages">
				<img src="../../images/mess.png">
				<span>课程管理</span>
				<div class="lil_arrow"></div>
				<div class="bar"></div>
				<div class="swanky_wrapper__content">
					<ul>
						<a href="../admin/AddCourse.jsp" target="iframe"><li>添加课程</li></a>
					
					</ul>
				</div>
			</label>
			<input id="Users" name="radio" type="radio">
			<label for="Users">
				<img src="../../images/mess.png">
				<span>班级、系部管理</span>
				<div class="lil_arrow"></div>
				<div class="bar"></div>
				<div class="swanky_wrapper__content">
					<ul>
						<a href="../admin/AddClass.jsp" target="iframe"><li>添加班级</li></a>
						<a href="../admin/AddDid.jsp" target="iframe"><li>添加系部</li></a>
						
					</ul>
				</div>
			</label>
			
			
			<input id="Notes" name="radio" type="radio">
			<label for="Notes">
				<img src="../../images/users.png">
				<span>日志管理</span>
				<div class="lil_arrow"></div>
				<div class="bar"></div>
				<div class="swanky_wrapper__content">
					<ul>
					
					
						<a href="AddNotes.jsp?aid="+aId    target="iframe"><li>添加日志</li></a>
						<a href="checkDeleteNotes.jsp?aid="+aId    target="iframe"><li>删除日志</li></a>
						<a href="checkUpdateNotes.jsp?aid="+aId    target="iframe"><li>修改日志</li></a>
						<a href="LookNote.jsp"    target="iframe"><li>查询日志</li></a>
						
					</ul>
				</div>
			</label>
			
			<input id="Quit" name="radio" type="radio">
			<label for="Quit">
				<img src="../../images/mess.png">
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

	<!--<iframe src="../index/index.jsp" width="1200px" height="500px" name="" frameborder="0">
			
	  
	</iframe>
 -->
 
 </body>
</html>