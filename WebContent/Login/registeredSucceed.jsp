<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册成功页面</title>
</head>
<body background="${pageContext.request.contextPath}/images/bg.jpg">
	<%
		Context ctx = null;
		DataSource ds = null;
		Statement stmt = null;
		ResultSet rs = null;
		Connection con = null;
		String name = request.getParameter("name").trim();//去除首尾空格
		String password = request.getParameter("password").trim();
		String refill = request.getParameter("refill").trim();
		String randomCode = request.getParameter("randomCode").trim();
		String validCode = (String) session.getAttribute("rand");
		request.setAttribute("userName", name);
		if (randomCode.equals(validCode)) {
			out.print("验证码正确！<br>");

			try {
				ctx = new InitialContext();
				ds = (DataSource) ctx.lookup("java:comp/env/jdbc/mysql");//mysql是在创建连接池时自己创建的名字
				con = ds.getConnection();
				stmt = con.createStatement();
				if (name != null) {
					rs = stmt.executeQuery("select * from user where name='" + name + "'");

					if (rs.next()) {
						out.print("用户已经存在  " + "<br>" + "去<a href=\"registered.jsp\">注册</a>" + "<br>"
								+ "去<a href=\"login.jsp\">登录</a>");
					} else {
						if (password.equals(refill)) {
							stmt.executeUpdate("insert into user (`name`, `password`) values  ('" + name + "','" + password + "');");
	%>
	注册成功！！！
	<br> 三秒钟后自动转到登录页面！！！
	<br> 如果没有跳转，请点击
	<a href="login.jsp">这里</a>！！！
	<span style="font-size: 24px;"><meta http-equiv="refresh"
			content="3;URL=login.jsp"> </span>
	<%
		} else {
							out.print("密码输入不一致!!!<br>" + "重新<a href=\"registered.jsp\">注册</a>");
						}
					}
				} else {
					out.print("姓名不能为空");
				}
			} catch (Exception e) {
				out.print(e);
			} finally {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (con != null)
					con.close();
			}
		} else {
			out.print("验证码错误！！！<br>" + "重新<a href=\"registered.jsp\">注册</a>");
		}
	%>

</body>
</html>