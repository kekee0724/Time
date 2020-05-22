<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>北京时间校准</title>
</head>
<body>
	<SCRIPT language=javascript>
		var timestamp = (Date.parse(new Date())).toString();
		var tt = parseInt(timestamp.substring(0, 10));
		function t() {
			now = new Date((tt + i + 28800) * 1000);
			i++;
			document.getElementById("times").innerHTML = now.toUTCString();
		}
		var i = 0;
		setInterval("t()", 1000);
		function l() {
			today = new Date();
			document.getElementById("local").innerHTML = today.toLocaleString();
		}
		setInterval("l()", 1000);
	</SCRIPT>
	<div class="box_time">
		<h4>北京时间</h4>
		<div id="times" style="font-size: 50px; text-align: center"></div>
	</div>
	<div class="box_time">
		<h4>电脑时间</h4>
		<div id="local" style="font-size: 50px; text-align: center"></div>
	</div>
</body>
</html>
