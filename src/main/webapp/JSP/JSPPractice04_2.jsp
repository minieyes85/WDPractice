<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method 1</title>
</head>
<body>
	<%
	String n1Str = request.getParameter("n1");
	String n2Str = request.getParameter("n2");
	
	double n1 = Double.parseDouble(n1Str);
	double n2 = Double.parseDouble(n2Str);
	
	String calc = request.getParameter("calcMethod");
	
	double result = 0.0;
	
	String resultStr = "";
	
	if(calc.equals("add")){
		result = n1 + n2 * 1.0;
		resultStr = n1 + " + " + n2 + " = ";
	} else if(calc.equals("sub")){
		result = n1 - n2 * 1.0;
		resultStr = n1 + " - " + n2 + " = ";
	} else if(calc.equals("times")){
		result = n1 * n2 * 1.0;
		resultStr = n1 + " * " + n2 + " = ";
	} else if(calc.equals("div")){
		result = n1 / n2 * 1.0;
		resultStr = n1 + " / " + n2 + " = ";
	}
	
	%>
	
	<div>
	<h2>계산결과</h2>
	<%=resultStr %> <%=result %>	
	</div>



</body>
</html>