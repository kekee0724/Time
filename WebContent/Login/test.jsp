<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>学习强国</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body background="${pageContext.request.contextPath}/images/bg.jpg">
	<%
		String name =(String) session.getAttribute("userName");
	out.println(name + "<br>");
		//session.setAttribute("userName", name);
	%>
	欢迎您！
	<br>
	<br> 进入在线测试系统，请遵守规则。
	<br>
	<br>
	<form action="Login/result.jsp" method="post">
		一.单项选择题 (每题20分) <br> 1. 在资源管理器中选定 多个不连续的文件要使用 ： <br> A<input
			type="radio" name="name_1" value="A">Shift键<br> B<input
			type="radio" name="name_1" value="B">Ctrl键<br> <br></br>

		2. Windows xp的注册表打开命令是： <br> A<input type="radio" name="name_2"
			value="A">regedit<br> B<input type="radio" name="name_2"
			value="B">msconfig<br> <br></br>

		<h4>二 多选题（全选对加60分，错选漏选不加分）</h4>

		1. 以下可以用来编辑java的编辑器是： <br> A<input type="checkbox" name="name_3"
			value="A">WORD<br> B<input type="checkbox" name="name_3"
			value="B">EXCEL<br> C<input type="checkbox"
			name="name_3" value="C">记事本<br> D<input type="checkbox"
			name="name_3" value="D">PowerPoint<br> <br></br> <br></br>

		<blockquote>
			<input type="submit" value="提交" name="button1"> <input
				type="reset" value="重置" name="button2">
		</blockquote>
	</form>
</body>
</html>
