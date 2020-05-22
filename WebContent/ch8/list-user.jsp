<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*,com.imooc.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<title>${msg}[JSTL-EL-读取pageScope,request,session里存储的对象]</title>
<script>
	if ('${sessionScope.msg}') {
		//alert('${fn:length(users)}');		
	}
</script>
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
	<!-- 这个普通用户是能看到的 -->
	<%-- 这个是普通用户看不到的 --%>
	<%--set是往pageContext对象中存储信息,生命周期在一个页面的{}内 --%>
	<c:set var="className" value="fail" />
	<c:if test="${msg=='删除成功！'}">
		<c:set var="className" value="success" />
	</c:if>

	<c:if test="${!empty msg}">
		<div id="msg" class="${className}">${msg}</div>
	</c:if>
	总共${fn:length(users)}位用户
	<hr />
	<table>
		<tr>
			<td>ID</td>
			<td>登录名</td>
			<td>登录密码</td>
			<td>邮箱</td>
			<td>性别</td>
			<td>联系方式</td>
			<td>姓名</td>
			<td>成绩</td>
			<td>其他</td>
			<td>其他</td>
		</tr>
		<c:forEach items="${users}" var="user">
			<tr>
				<td>${user.id}</td>
				<td>${user.loginname}</td>
				<td>${user.password}</td>
				<td>${user.email}</td>
				<td>${user.sex}</td>
				<td>${user.phone}</td>
				<td>${user.uname}</td>
				<td>${user.score}</td>
				<td><c:if
						test="${user.id != sessionScope.user.id and '1'==sessionScope.user.ulevel}">
						<a href="/onlineTest/user/remove.action?id=${user.id}">删除</a>
					</c:if></td>
				<td><a href="/onlineTest/user/update.action?id=${user.id }">修改</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>