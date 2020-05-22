<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>成绩录入</title>
</head>
<body>
<style type="text/css">
body {
	background-image: url(${pageContext.request.contextPath}/images/bg.jpg);
	background-size: cover;
}
</style>
<form action="homework11.jsp" method="post">
 英语成绩：<input type="text" name="english"><br><br>
 语文成绩：<input type="text" name="chinese"><br><br>
 数学成绩：<input type="text" name="math"><br><br>
 计算机成绩：<input type="text" name="computer"><br><br>
 音乐成绩：<input type="text" name="music"><br><br>
 <input type="submit" value="计算成绩">
</form>
</body>
</html>