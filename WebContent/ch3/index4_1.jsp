<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index.jsp</title>
<script>
    function getresult()
    {
        var num1=document.getElementById("num1").value;
        var sig=document.getElementById("sig").value;
        var num2=document.getElementById("num2").value;
        n1 = parseFloat(num1);
        n2 = parseFloat(num2);
         if(sig=="/"&& num2=="0")
        {
                document.write("除数不能为零");
            
        }
        else
        {
            
     switch (sig) {
            case "+":
                document.getElementById("result").value = n1+n2;
                break;
            case "-":
                document.getElementById("result").value =n1-n2;
                break;
            case "*":
                document.getElementById("result").value =n1*n2;
                break;
            case "/":
                document.getElementById("result").value =n1/n2;
                break;

            } 
        }

    }
</script>
</head>
<body>
      <h1>计算器</h1>
      <hr color="red">
      请输入第一个数：<input type="text" name="num1" id="num1"><br><br>
      <select name="sig" id="sig">
          <option value="+">+</option>
          <option value="-">-</option>
          <option value="*">*</option>
          <option value="/">/</option>
      </select><br><br>
      请输入第二个数：<input type="text" name="num2" id="num2"><br><br>
      <input type="submit" value="submit" onclick="getresult()">
      <input type="reset" value="reset"><br><br>
      <input type="text" name="result"  id="result"/>
</body>
</html>