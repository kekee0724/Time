
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">
<title>登录</title>
<!-- 使用JavaScript实现对用户名填入的用户名以及密码是否为空进行验证   -->
<script language="javascript">
	function check(form) {
		if (form.username.value == "") {
			alert("请输入用户名!");
			form.username.focus();
			return false;
		}
		if (form.password.value == "") {
			alert("请输入密码!");
			form.password.focus();
			return false;
		}
		return true;
	}
</script>

</head>
<body background="images/bg.jpg">
	<form action="ch4/test.jsp" method="post" name="login"
		onsubmit="return check(login)">
		<h2 align="center">
			<font color=red>在线测试系统</font>
		</h2>
		<table border="1" align="center">
			<tr>
				<td>姓名：</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr align="center">
				<th colspan="2"><input type="submit" value=" 测    试 ">
					<input type="reset" value=" 重    做 "></th>
			</tr>
		</table>
	</form>
	<p align="center">
		<a href="regist.jsp">注册</a>
	</p>
</body>
</html>