<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "/" + request.getServerName() + ":" + request.getServerPort() + path
			+ "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>成绩</title>
</head>
<body background="${pageContext.request.contextPath}/images/bg.jpg">
	<%
		Context ctx = null;
		DataSource ds = null;
		Statement stmt = null;
		ResultSet rs = null;
		Connection con = null;
		String name = (String) session.getAttribute("userName");
		out.println(name + "<br>");
		int socre_num = 0;
		String s1 = request.getParameter("name_1");
		if (s1 != null) {
			if (s1.equals("B")) {
				socre_num++;
				out.println("1.解答正确" + "<br>");
			} else {
				out.println("1.本题目选B" + "<br>");
			}
		} else
			out.println("1.此题未作答！" + "<br>");
		out.println("    " + "<br>");

		String s2 = request.getParameter("name_2");
		if (s2 != null) {
			if (s2.equals("A")) {
				socre_num++;
				out.println("2.解答正确" + "<br>");
			} else {
				out.println("2.本题目选A" + "<br>");
			}
		} else
			out.println("2.此题未作答！" + "<br>");
		out.println("    " + "<br>");

		String[] s3 = request.getParameterValues("name_3");
		if (s3 != null) {
			String types3 = "";
			for (int i = 0; i < s3.length; i++)
				types3 += s3[i];
			if (types3 != null) {
				if (types3.equals("AC")) {
					socre_num += 3;
					out.println("3.解答正确" + "<br>");
				} else {
					out.println("3.本题目选AC" + "<br>");
				}
			}
			out.println("    " + "<br>");
		} else
			out.println("3.此题未作答！" + "<br>");
		out.println("共得 " + socre_num * 20 + " 分" + "<br>");
		if (socre_num * 20 >= 60) {
			out.println("成绩合格" + "<br>");
		} else
			out.println("成绩不合格" + "<br>");

		try {
			ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/mysql");//mysql是在创建连接池时自己创建的名字
			con = ds.getConnection();
			stmt = con.createStatement();
			String sql = "update user set score=" + socre_num * 20 + " where name='" + name + "';";
			stmt.executeUpdate(sql);
			out.println("成绩已写入数据库！" + "<br>");
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
	%>
</body>
</html>
