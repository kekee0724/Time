<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>验证码</title>
  </head>
  <body>
    <form action="checkServlet" method="post">
        <label>输入验证码</label><br/>
        <input type="text" name="randomCode"/><img title="点击更换" onclick="javascript:refresh(this);" src="randomImg.jsp"><br/>
        <input type="submit" value="submit">
    </form>
  </body>
</html>



