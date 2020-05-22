<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>新用户注册</title>

<script type="text/javascript">
	function checkForm() {
		var name = document.getElementById("name").value;
		var password = document.getElementById("password").value;
		var refill = document.getElementById("refill").value;
		var randomCode = document.getElementById("randomCode").value;
		if (name == null || name == "") {
			document.getElementById("error").innerHTML = "用户名不能为空";
			return false;
		}
		if (password == null || password == "") {
			document.getElementById("error").innerHTML = "密码不能为空";
			return false;
		}
		if (refill == null || refill == "") {
			document.getElementById("error").innerHTML = "确认密码不能为空";
			return false;
		}
		if (refill!==password) {
			document.getElementById("error").innerHTML = "两次密码不一致";
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
		<font color=red>新用户注册</font>
	</h2>

	<form
		action="${pageContext.request.contextPath}/Login/registeredSucceed.jsp"
		method="post" onsubmit="return checkForm()">
		<table align="center" border="1">
			<tr align="left">
				<td>请输入用户名:</td>
				<td><input type="text" id="name" name="name" autofocus="autofocus"></td>
			</tr>
			<tr align="left">
				<td>请输入密码:</td>
				<td><input type="text" id="password" name="password"></td>
			</tr>
			<tr align="left">
				<td>请输入确认密码:</td>
				<td><input type="text" id="refill"name="refill"></td>
			</tr>
			<tr align="left">
				<td>请输入验证码:</td>
				<td><input type="text" id="randomCode" name="randomCode" /></td>
			</tr>
			<tr align="center">
				<td><img title="点击更换" onclick="javascript:refresh(this);"
					src="randomImg.jsp"></td>
				<td><input type="submit" value="注册" name="login"> <input
					type="reset" value="重置" name="reset"><font id="error"
					color="red">${error }</font></td>
			</tr>
		</table>
	</form>
</body>
</html>