<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>calculator.jsp</title>
</head>
<body>
    <jsp:useBean id="calcBean" class="com.imooc.Calculator"></jsp:useBean>
    <jsp:setProperty property="*" name="calcBean" />
    <%
        calcBean.calculate();
    %>
    <hr>
    计算结果是:
    <jsp:getProperty property="firstnum" name="calcBean" />
    <jsp:getProperty property="operator" name="calcBean" />
    <jsp:getProperty property="secondnum" name="calcBean" />
    =<jsp:getProperty property="result" name="calcBean" />
    <hr>
    <form action="calculator.jsp" method="post">
        <table style="text-align: center;">
            <tr>
                <td colspan="2">简单的计算器</td>
            </tr>
            <tr>
                <td>第一个参数</td>
                <td><input type="text" name="firstnum" /></td>
            </tr>
            <tr>
                <td><select name="operator">
                        <option value="+">+</option>
                        <option value="-">-</option>
                        <option value="*">*</option>
                        <option value="/">/</option>
                </select></td>
            </tr>
            <tr>
                <td>第二个数</td>
                <td><input type="text" name="secondnum" /></td>
            </tr>
            <tr>
                <td>
                    <button name="calc" type="submit">计算</button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>