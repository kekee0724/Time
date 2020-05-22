<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户信息</title>
	
  </head>
  
  <body>
    <form action="showServlet" method="post">
     <p>用户名：<input type="text" name="username"></p>
     <p><input type="submit" value="提交"></p>
    </form> <br>
  </body>
</html>
