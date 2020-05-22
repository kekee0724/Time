<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>head</title>
<style>
body {
	background-image: url(<%=basePath%>images/bg.jpg);
}
</style>
</head>
<body>
	<table style="height: 50px; width: 100%; background-color: #cceeff;">
		<tr style="height: 45px;">		 
			<td style="align: center;">首页</td>  
			<td style="">招聘信息</td>  
			<td style="">公告</td>  
			<td style="">联系我们</td>  
			<td style="">企业产品</td>
		</tr>
	</table>
</body>
</html>

