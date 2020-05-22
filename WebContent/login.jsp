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
<script>
	function $(id) {
		return document.getElementById(id);
	}
	var ua = navigator.userAgent.toLowerCase();

	window.onload = function() {
		setInterval(function() {
			$('advLayer').innerHTML = new Date().toLocaleString();
		}, 1000);
	}
</script>
<script src="js/jquery-1.3.2.min.js"></script>
<script src="js/calendar.js"></script>
</head>
<body>
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
</body>
</html>