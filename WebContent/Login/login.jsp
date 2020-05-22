<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎进入考试系统！</title>
<link rel="stylesheet" href="css/bg.css">

<style>
body {
	margin: 0 auto;
}

#advLayer {
	width: 100%;
	position: fixed;
	height: 60px;
	opacity: 0.5;
	text-align: center;
	color: white;
	font: 40px/60px arial;
}

div {
	
}

.error {
	color: red;
	font-style: italic;
}

table#regTable {
	margin: 0 auto;
	width: 400px;
	border: 0;
	border-collapse: collapse;
}

table#regTable td {
	text-align: center;
	border: 1px dashed olive;
}

input[type="text"] {
	border: 0;
	border-bottom: 1px solid blue;
}

table#regTable tr td:eq(0) {
	text-align: right;
	margin-right: 10px;
}
</style>

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
<script src="js/jquery-1.3.2.min.js"></script>
<script src="js/calendar.js"></script>
</head>
<body background="${pageContext.request.contextPath}/images/bg.jpg">

	<div id="bg">
		<h1 align='center'>欢迎进入考试系统！</h1>
		<form action="login.action" method="post">
			<table id="regTable">
				<tr>
					<th COLSPAN="3">考生登录</th>
				</tr>
				<tr>
					<td width="80">准考证号：</td>
					<td width="180" colspan="2"><input id="loginname"
						name="loginname" type="text" placeholder="9个数字" /></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td colspan="2"><input required type="password"
						name="password" id="password" /></td>
				</tr>
				<tr>
					<td colspan="3"><input type="reset" value="重置" /> <input
						type="submit" value="登录" /> &nbsp;&nbsp;&nbsp;&nbsp; 忘记密码？<a
						href="reg.jsp">重新注册</a><a href="Login/login.jsp">Login</a> <br></td>
				</tr>
			</table>
		</form>
	</div>
	<form action="${pageContext.request.contextPath}/Login/success.jsp"
		method="post" onsubmit="return checkForm()">
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
				<td><input type="text" id="randomCode" name="randomCode" /></td>
			</tr>
			<tr align="center">
				<td><img
					title="点击更换" onclick="javascript:refresh(this);"
					src="randomImg.jsp"></td>
				<td><input type="submit" value="登录" name="login"> <input
					type="reset" value="重置" name="reset"><font id="error"
					color="red">${error }</font></td>
			</tr>
		</table>
		<p align="center">
			<a href="${pageContext.request.contextPath}/Login/registered.jsp" color=blue>注册用户</a>
		</p>
</body>
</html>