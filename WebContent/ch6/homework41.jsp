<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>输出乘法表</title>
</head>
<body>
<%
   //输出从1到提交参数的乘法表
   int num=Integer.parseInt(request.getParameter("num"));
   for(int i=1;i<=num;i++){
   		for(int j=1;j<=i;j++){
   			out.print(i+"*"+j+"="+i*j+"  ");
   		}
   		out.print("<br>");
   }
 %>
<br>
<%
	//只输出提交参数的乘法表
	 String countString = request.getParameter("num");
	 int count=Integer.parseInt(countString);
	 for(int i=1;i<=count;i++){
		 pageContext.setAttribute("i",i);
%>
 	     ${param.num}*${i }=${param.num*i }
<%	
	} 
%>
</body>
</html>