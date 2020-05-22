<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.imooc.*"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首页</title>
</head>
<body>
<style type="text/css">
body {
	background-image: url(${pageContext.request.contextPath}/images/bg.jpg);
	background-size: cover;
}
</style>
	<%
		//设置每5秒刷新一次
		response.setIntHeader("Refresh", 5);
		//获取当前时间
		Date dNow = new Date();
		SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		out.print("<h2 align=\"center\">" + ft.format(dNow) + "</h2>");
	%>
	<a href="ch1/time.jsp">time</a>
	<br>
	<a href="ch1/chapter1.jsp">chapter1</a>
	<br>
	<a href="ch2/chapter2.jsp">chapter2</a>
	<br>
	<a href="ch3/chapter3.jsp">chapter3</a>
	<br>
	<a href="ch4/chapter4.jsp">chapter4</a>
	<br>
	<a href="ch5/chapter5.jsp">chapter5</a>
	<br>
	<a href="ch6/chapter6.jsp">chapter6</a>
	<br>
	<a href="ch8/chapter8.jsp">chapter8</a>
	<br>
	<a href="ch9/chapter9.jsp">chapter9</a>
	<br>
	<a href="ch10/chapter10.jsp">chapter10</a>
	<br>
	<hr color="Green" width="1200" />
	<hr color="Cyan" width="1200" />
	<hr color="Black" width="1200" />
	<hr color="Red" width="1200" />
	<hr color="Yellow" width="1200" />
	<hr color="Pink" width="1200" />
	<a href="Login/login.jsp">Login</a>
	<a href="login.jsp">login.jsp</a>
	
	<br>
	<p align="center" style="padding-top: 15px;">版权所有2019 Cocoa  <a href="http://www.baidu.com" target="_blank">http://www.baidu.com</a></p>
</body>
</html>



