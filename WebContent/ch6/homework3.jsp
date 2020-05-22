<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>输入数据</title>
</head>
<body >
<style type="text/css">
body {
	background-image: url(${pageContext.request.contextPath}/images/bg.jpg);
	background-size: cover;
}
</style>

	<form action="homework31.jsp" method="post">
		录入背景颜色：<input type="text" name="bgColor"><br>
		<br> 字号大小：<input type="text" name="size"><br>
		<br> 表格宽度：<input type="text" name="width"><br>
		<br> 表格边框大小：<input type="text" name="tableSize"><br>
		<br> <input type="submit" value="提交">
	</form>
</body>
</html>