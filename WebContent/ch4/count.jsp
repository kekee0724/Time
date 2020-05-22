<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>pageContext对象运用：页面计数器</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <%
    //初始化处理：
        if (pageContext.getAttribute("pageCount")==null) 
        {
            pageContext.setAttribute("pageCount", new
            Integer(0));
        }
    if (session.getAttribute("sessionCount")==null) 
        {
            session.setAttribute("sessionCount",new
            Integer(0));
        }
    if (application.getAttribute("appCount")==null) 
        {
            application.setAttribute("appCount",new
            Integer(0));
        }
        
     //信息累加的处理
       Integer count = (Integer)pageContext.getAttribute("pageCount");
       pageContext.setAttribute("pageCount", new Integer(count.intValue()+1));
       Integer count2 = (Integer)session.getAttribute("sessionCount");
       session.setAttribute("sessionCount",new Integer(count2.intValue()+1));
       Integer count3 = (Integer)application.getAttribute("appCount");
       application.setAttribute("appCount",new Integer(count3.intValue()+1));
   %>
  <body bgcolor="#CC9999">
       <b>页面计数= </b>
        <%=pageContext.getAttribute("pageCount")%>
        <br/><b>会话计数= </b>
        <%=session.getAttribute("sessionCount")%>
        <br/><b>应用程序计数= </b>
        <%=application.getAttribute("appCount")%>
  </body>
</html>
