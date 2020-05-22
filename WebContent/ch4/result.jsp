<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "/" + request.getServerName() + ":" + request.getServerPort() + path
			+ "/";
%>
<%
	int socre_num = 0;
	String s1 = request.getParameter("name_1");
	if (s1 != null) {
		if (s1.equals("B")) {
			socre_num++;
			out.println("1.解答正确" + "<br>");
		} else {
			out.println("1.本题目选B" + "<br>");
		}
	} else
		out.println("1.此题未作答！" + "<br>");
	out.println("    " + "<br>");

	String s2 = request.getParameter("name_2");
	if (s2 != null) {
		if (s2.equals("A")) {
			socre_num++;
			out.println("2.解答正确" + "<br>");
		} else {
			out.println("2.本题目选A" + "<br>");
		}
	} else
		out.println("2.此题未作答！" + "<br>");
	out.println("    " + "<br>");

	String[] s3 = request.getParameterValues("name_3");
	if (s3 != null) {
		String types3 = "";
		for (int i = 0; i < s3.length; i++)
			types3 += s3[i];
		if (types3 != null) {
			if (types3.equals("AC")) {
				socre_num += 3;
				out.println("3.解答正确" + "<br>");
			} else {
				out.println("3.本题目选AC" + "<br>");
			}
		}
		out.println("    " + "<br>");
	} else
		out.println("3.此题未作答！" + "<br>");
	out.println("共得 " + socre_num * 20 + " 分");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>成绩</title>
</head>
<body>

</body>
</html>