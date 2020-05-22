<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>result.jsp</title>
</head>
<body>
<!--       编写一个JSP登录页面，可输入用户名和密码，提交请求到另一个JSP页面，
      该JSP页面获取请求的相关数据并显示出来。请求的相关数据包括用户输入
      的请求数据和请求本身的一些信息(比如请求使用的协议getProtocol()
       、请求的URI request.getServletPath() 、请求方法request.getMethod() 
       、远程地址request.getRemoteAddr()等)。 -->
       用户名：<%=request.getParameter("username") %><br><br>
       密码：<%=request.getParameter("password") %><br><br>
       请求使用的协议：<%=request.getProtocol() %><br><br>
       请求的URI：<%=request.getServletPath() %><br><br>
       请求方法：<%=request.getMethod() %><br><br>
       远程地址：<%=request.getRemoteAddr()%><br><br>
       
</body>
</html>