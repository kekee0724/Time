<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>比较数字大小</title>
</head>
<body>
<%
 int a=5;
 int b=6;
 pageContext.setAttribute("a",a);
 pageContext.setAttribute("b",b);
%>
 ${a gt b }
 ${a lt b }
 ${a eq b }
 ${a ne b }
</body>
</html>