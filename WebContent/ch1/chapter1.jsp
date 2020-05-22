<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.imooc.*"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chapter1</title>
</head>
<body>
	<%
		//设置每5秒刷新一次
		response.setIntHeader("Refresh", 5);
		//获取当前时间
		Date dNow = new Date();
		SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		out.print("<h2 align=\"center\">" + ft.format(dNow) + "</h2>");

		String[] s = new String[] { "学号", "姓名", "性别", "班级", "成绩" };
		out.println("<table border='1' cellspacing='0' id='a'>");
		for (int i = 0; i < s.length; i++) {
			out.println("<th class='b'>");
			out.println(s[i]);
			out.println("</th>");
		}
		ArrayList<Student> array = new ArrayList<Student>();
		array.add(new Student(001, "李白", "男", "01", 723.0));
		array.add(new Student(002, "孟浩然", "男", "02", 689.0));
		array.add(new Student(003, "杨玉环", "女", "03", 600.0));
		java.util.Iterator<Student> i = array.iterator();
		while (i.hasNext()) {
			Student s1 = (Student) i.next();
			out.println("<tr>");
			out.println("<td class='b'>");
			out.println(s1.getId());
			out.println("</td>");
			out.println("<td class='b'>");
			out.println(s1.getName());
			out.println("</td>");
			out.println("<td class='b'>");
			out.println(s1.getSex());
			out.println("</td>");
			out.println("<td class='b'>");
			out.println(s1.getCla());
			out.println("</td>");
			out.println("<td class='b'>");
			out.println(s1.getResult());
			out.println("</td>");
			out.println("</tr>");
		}
		out.println("</table>");
	%>
	<hr color="Green" width="500" />
	<hr color="Cyan" width="500" />
	<hr color="Black" width="500" />
	<hr color="Red" width="500" />
	<hr color="Yellow" width="500" />
	<hr color="Pink" width="500" />
</body>
</html>



