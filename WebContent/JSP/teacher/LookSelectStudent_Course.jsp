<%@page import="com.admin.util.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		List<String> list = new ArrayList<String>();

		List<String> list1 = new ArrayList<String>();
		Connection con = null;
		ResultSet rs = null;
		Statement stmt = null;
		int num =0;

		String sDBDriver = "com.mysql.jdbc.Driver";
		String sConnStr = "jdbc:mysql://localhost:3306/online course selection system?serverTimezone=CTT&useUnicode=true&characterEncoding=utf-8&allowMultiQueries=true";
		String username = "root";
		String password = "123456";

		Class.forName(sDBDriver);
		con = DriverManager.getConnection(sConnStr, username, password);
		stmt = con.createStatement();

		String teaId = request.getParameter("teaId");

		String sql = "select * from course where tId='" + teaId + "'";

		rs = stmt.executeQuery(sql);

		try {

			while (rs.next()) {

				list1.add(rs.getString(1));
				list.add(rs.getString(2));

			}
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
	%>

	<select id="printSelect" onchange="selectPrint()">
		<option>--请选择课程--</option>
		<%
			for (int i = 0; i < list.size(); i++) {
		%>

		<option><%=list1.get(i)%></option>

		<%
			}
		%>

	</select>

	<script language="javascript">
		function selectPrint() {
			var myselect = document.getElementById("printSelect");
			var index = myselect.selectedIndex;
			//myselect.options[index].value;
			//myselect.options[index].text;
			//alert(myselect.options[index].text);
			
			num = index;
			request.setAttribute("index", index);

		}
	</script>



	<table border="1" width="900px">
		<tr>
			<th>学号:</th>
		</tr>
		<%
			String sql1 = "select * from choosecourse where cId='" + list1.get(num) + "'";

			rs = stmt.executeQuery(sql1);

			try {

				while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(2)%></td>
		</tr>
		<%
			}
			} catch (SQLException ex) {
				System.out.println(ex.getMessage());
			}
		%>
	</table>

	




</body>
</html>