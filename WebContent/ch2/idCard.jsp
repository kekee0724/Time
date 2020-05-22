<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
		<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>可可</title>
		</head>
	<body>
	<%!
		public String getBirthday(String id){//传入身份证号码
			if(id.length()==18){//判断身份证的位数，继续执行
				StringBuilder sb = new StringBuilder();
				sb.append(id.substring(6,10)).append("-").append(id.substring(10,12)).append("-").append(id.substring(12,14));
				//获取身份证上  的年月日  
					return sb.toString();//返回年月日     字符串
			}else{//没有则返回  空
				return null;
			}
		}
	%>	
<center>
	根据身份证自动计算生日
	<br/>
	<br/>
	<table border="1">
		<tr>
			<td>身份证</td>
			<td>生日</td>
		</tr>
		
		<tr>
			<td>542425197909119790</td>
			<td><%=getBirthday("542425197909119790")%></td>
		</tr>
		
		<tr>
			<td>451401197408163212</td>
			<td><%=getBirthday("451401197408163212")%></td>
		</tr>
		</table>
</center>
</body>
</html>

