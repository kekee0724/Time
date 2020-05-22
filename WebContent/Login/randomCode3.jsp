<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>在线测试系统登录</title>

<script type="text/javascript">
	function checkForm() {
		var userName = document.getElementById("userName").value;
		var password = document.getElementById("password").value;
		var randomCode = document.getElementById("randomCode").value;
		if (userName == null || userName == "") {
			document.getElementById("error").innerHTML = "用户名不能为空";
			return false;
		}
		if (password == null || password == "") {
			document.getElementById("error").innerHTML = "密码不能为空";
			return false;
		}
		if (randomCode == null || randomCode == "") {
			document.getElementById("error").innerHTML = "验证码不能为空";
			return false;
		}
		return true;
	}
</script>

</head>
<body background="${pageContext.request.contextPath}/images/bg.jpg">
	<h2 align="center">
		<font color=red>在线测试系统</font>
	</h2>
	验证码:<%=session.getAttribute("rand")%>
	<form action="${pageContext.request.contextPath}/Login/success.jsp" method="post" onsubmit="return checkForm()">
		<table align="center" border="1">
			<tr>
				<td>姓 名:</td>
				<td><input type="text" id="userName" name="userName"></td>
			</tr>
			<tr>
				<td>密  码:</td>
				<td><input type="text" id="password" name="password"></td>
			</tr>
			<tr>
				<td>验证码:</td>
				<td><input type="text" id="randomCode" name="randomCode"/><img title="点击更换" onclick="javascript:refresh(this);" src="randomImg.jsp"><br/></td>
			</tr>
			<tr>
				<td><input type="submit" value="登录" name="login"></td>
				<td><input type="reset" value="重置" name="reset"></td>
			</tr>
		</table>       
		<font id="error" color="red">${error }</font>

		<p align="center">
			<a href="Login/registered.jsp" color=blue>注册用户</a>
		</p>
</body>
</html>