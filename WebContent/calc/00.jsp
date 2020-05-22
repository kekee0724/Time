<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
<title>javascript简单计算器</title> 
<script type="text/javascript"> 
<!--Hide The Script from old browsers -- 
function compute(obj) //单击等于"="按钮调用的函数; 
{obj.expr.value = eval(obj.expr.value)} //用JS得eval()方法计算name为expr中的公式 
var one = '1' 
var two = '2' 
var three = '3' 
var four = '4' 
var five = '5' 
var six = '6' 
var seven = '7' 
var eight = '8' 
var nine = '9' 
var zero = '0' 
var plus = '+' 
var minus = '-' 
var multiply = '*' 
var divide = '/' 
var decimal = '.' 
function enter(obj,string) //type="button"的调用函数 
{obj.expr.value += string} //在表单expr的值后面连上相应的字符 
//--End Hiding Here --> 
</script> 
</head> 

<body> 
<form name="calc"> 
<table border="1"> 
<td colspan="4"><input type="text" name="expr" size="30" action="compute(this.form)" /></td> 
<tr> 
<td><input type="button" value=" 7 " onclick="enter(this.form,seven)" /></td> 
<td><input type="button" value=" 8 " onclick="enter(this.form,eight)" /></td> 
<td><input type="button" value=" 9 " onclick="enter(this.form,nine)" /></td> 
<td><input type="button" value=" / " onclick="enter(this.form,divide)" /></td> 
</tr> 
<tr> 
<td><input type="button" value=" 4 " onclick="enter(this.form,four)" /></td> 
<td><input type="button" value=" 5 " onclick="enter(this.form,five)" /></td> 
<td><input type="button" value=" 6 " onclick="enter(this.form,six)" /></td> 
<td><input type="button" value=" * " onclick="enter(this.form,multiply)" /></td> 
</tr> 
<tr> 
<td><input type="button" value=" 1 " onclick="enter(this.form,one)" /></td> 
<td><input type="button" value=" 2 " onclick="enter(this.form,two)" /></td> 
<td><input type="button" value=" 3 " onclick="enter(this.form,three)" /></td> 
<td><input type="button" value=" - " onclick="enter(this.form,minus)" /></td> 
</tr> 
<tr> 
<td colspan="2"><input type="button" value=" 0 " onclick="enter(this.form,zero)" /></td> 
<td><input type="button" value=" . " onclick="enter(this.form,decimal)" /></td> 
<td><input type="button" value=" + " onclick="enter(this.form,plus)" /></td> 
</tr> 
<tr> 
<td colspan="2"><input type="button" value=" = " onclick="compute(this.form)" /></td> 
<td colspan="2"><input type="button" value="AC" onclick="form.reset()"/></td> 
</tr> 
</table> 
</form> 
</body> 
</html> 
