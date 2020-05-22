<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>总成绩&平均成绩</title>
</head>
<body>
<style type="text/css">
body {
	background-image: url(${pageContext.request.contextPath}/images/bg.jpg);
	background-size: cover;
}
</style>
<jsp:useBean id="score" class="com.inspur.el.homework.Score"></jsp:useBean>
<jsp:setProperty name="score" property="*"/>
该学生的总成绩是：${score.chinese+score.math+score.english+score.computer+score.music }<br><br>
该学生的平均成绩是：${(score.chinese+score.math+score.english+score.computer+score.music)/5 }<br><br>

</body>
</html>