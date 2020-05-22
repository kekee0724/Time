<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index.jsp</title>
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
<body>
<!--       编写一个JSP登录页面，可输入用户名和密码，提交请求到另一个JSP页面，
      该JSP页面获取请求的相关数据并显示出来。请求的相关数据包括用户输入
      的请求数据和请求本身的一些信息(比如请求使用的协议getProtocol()
       、请求的URI request.getServletPath() 、请求方法request.getMethod() 
       、远程地址request.getRemoteAddr()等)。 -->
       
       <form action="result.jsp" method="post" name="login" onsubmit="return check(login)">
           用户名:<input type="text" name="username"><br><br>
           密码:<input type="text" name="password"><br><br>
           <input type="submit" value="登陆">
       </form>
</body>
</html>


