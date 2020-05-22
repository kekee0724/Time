<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>首页</title>
</head>

<style>
* {
	padding: 0;
	margin: 0;
	font-family: "微软雅黑";
}

.header {
	height: 72px;
	background: #458fce;
}

.header .logo {
	color: #fff;
	line-height: 70px;
	font-size: 30px;
	margin-left: 20px;
	display: inline-block;
	text-align: center;
}

a {
	color: #000;
	text-decoration: blink;
}

.header .login {
	float: right;
	color: #fff;
	line-height: 72px;
	margin-right: 2px;
	display: inline-block;
}

.banner {
	height: 380px;
	overflow: hidden;
	background: #ddd;
}
</style>

<body>
	<div class="header">
		<div class="logo">武汉商学院</div>
		<div class="login">
			<a href="javascript:void(0)">登录</a> <span>|</span> <a
				href="javascript:void(0)">注册</a>
		</div>
	</div>
	<form action="<%=basePath%>Login" method="post">
		帐号: <input type="text" id="id" name="id" value="${cookie.id.value }"> <br>
		密码: <input type="text" id="password" name="password" value="${cookie.password.value }">
		<br> <input type="submit" value="登录">
	</form>
	<br>
	<a href="http://www.baidu.com">百度一下</a>
	<a href="http://www.runoob.com/html/html5-intro.html">runoob</a>

</body>

</html>