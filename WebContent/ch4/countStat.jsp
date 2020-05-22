<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>统计网站的访问次数-情形一</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<h2>统计页面访问次数</h2>
	<%
		//初始化处理：
		if (pageContext.getAttribute("pageCount") == null) {
			pageContext.setAttribute("pageCount", new Integer(0));
		}
		if (application.getAttribute("appCount") == null) {
			application.setAttribute("appCount", new Integer(0));
		}
		ArrayList al = (ArrayList) application.getAttribute("al");
		if (al == null) {
			al = new ArrayList();
		}
		if (!al.contains(session.getId())) {
			al.add(session.getId());
		}
		application.setAttribute("al", al);

		//信息累加的处理
		Integer count = (Integer) pageContext.getAttribute("pageCount");
		pageContext.setAttribute("pageCount", new Integer(count.intValue() + 1));
		Integer count1 = (Integer) application.getAttribute("appCount");
		application.setAttribute("appCount", new Integer(count1.intValue() + 1));
	%>
	<b>情况1：网站访问次数(一个浏览器算一次访问)： </b>
	<%=al.size()%>
	<br />
	<br />
	<b>情况2：网站访问次数(刷新一次页面算一次访问)： </b>
	<%=application.getAttribute("appCount")%>
	<br />
	<br />
</body>
</html>