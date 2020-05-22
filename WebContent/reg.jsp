<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎注册考试系统！</title>
<!DOCTYPE html>
<html>
<head>
<META charset="utf-8" />
<style>
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
<script src="js/jquery-1.3.2.min.js"></script>
<script src="js/calendar.js"></script>
</head>
<body>
	<h1 align='center'>请注册</h1>
	<form id="regForm" action="reg.action" method="post">
		<table id="regTable">
			<tr>
				<th COLSPAN="3">(想要考的好，注册必须好)</th>
			</tr>
			<tr>
				<td width="80">准考证号：</td>
				<td width="180" colspan="2"><input id="loginname"
					name="loginname" type="text" placeholder="只填数字" /></td>
			</tr>
			<tr>
				<td width="80">姓名：</td>
				<td width="180" colspan="2"><input name="uname" type="text" /></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td colspan="2"><input required type="password" name="password"
					id="password" /></td>

			</tr>
			<tr>
				<td>确认密码：</td>
				<td colspan="2"><input required type="password"
					name="confirm_password" id="confirm_password" /></td>
			</tr>
			<tr>
				<td width="80">电子邮箱：</td>
				<td width="180" colspan="2"><input id="email" name="email"
					type="text" /></td>
			</tr>
			<tr>
				<td width="80">手机号：</td>
				<td width="180" colspan="2"><input name="phone" type="text"
					placeholder="11位有效数字" /></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td colspan="2">男:<input type="radio" name="sex" value="1" /><img
					src="img/125.gif" /> 女:<input type="radio" name="sex" value="0" /><img
					src="img/123.gif" /></td>
			</tr>
			<tr>
				<td>出生日期</td>
				<td colspan="2"><input type="text" name="birth" readonly
					class="calen" /></td>
			</tr>
			<tr>
				<td colspan="3"><input type="reset" /> <input type="submit"
					value="立即注册" /></td>
			</tr>
		</table>
	</form>
</body>
</html>

<!--
[71, 69, 84, 32, 47, 32, 72, 84, 84, 80, 47, 49, 46, 49, 13, 10, 72, 111, 115, 116, 58, 32, 49, 57, 50, 46, 49, 54, 56, 46, 49, 46, 49, 50, 49, 13, 10, 85, 115, 101, 114, 45, 65, 103, 101, 110, 116, 58, 32, 77, 111, 122, 105, 108, 108, 97, 47, 53, 46, 48, 32, 40, 87, 105, 110, 100, 111, 119, 115, 32, 78, 84, 32, 53, 46, 49, 59, 32, 114, 118, 58, 51, 56, 46, 48, 41, 32, 71, 101, 99, 107, 111, 47, 50, 48, 49, 48, 48, 49, 48, 49, 32, 70, 105, 114, 101, 102, 111, 120, 47, 51, 56, 46, 48, 13, 10, 65, 99, 99, 101, 112, 116, 58, 32, 116, 101, 120, 116, 47, 104, 116, 109, 108, 44, 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 120, 104, 116, 109, 108, 43, 120, 109, 108, 44, 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 120, 109, 108, 59, 113, 61, 48, 46, 57, 44, 42, 47, 42, 59, 113, 61, 48, 46, 56, 13, 10, 65, 99, 99, 101, 112, 116, 45, 76, 97, 110, 103, 117, 97, 103, 101, 58, 32, 122, 104, 45, 67, 78, 44, 122, 104, 59, 113, 61, 48, 46, 56, 44, 101, 110, 45, 85, 83, 59, 113, 61, 48, 46, 53, 44, 101, 110, 59, 113, 61, 48, 46, 51, 13, 10, 65, 99, 99, 101, 112, 116, 45, 69, 110, 99, 111, 100, 105, 110, 103, 58, 32, 103, 122, 105, 112, 44, 32, 100, 101, 102, 108, 97, 116, 101, 13, 10, 67, 111, 110, 110, 101, 99, 116, 105, 111, 110, 58, 32, 107, 101, 101, 112, 45, 97, 108, 105, 118, 101, 13, 10, 13, 10]

GET / HTTP/1.1
Host: 192.168.1.121
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:38.0) Gecko/20100101 Firefox/38.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
Accept-Language: zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3
Accept-Encoding: gzip, deflate
Connection: keep-alive


-->