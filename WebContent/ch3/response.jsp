<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>My JSP 'response.jsp' starting page</title>
  </head>
  <body>
   用户名：<%=request.getSession().getAttribute("username") %>
   密    码 ：<%=request.getSession().getAttribute("password") %>
  </body>
</html>


