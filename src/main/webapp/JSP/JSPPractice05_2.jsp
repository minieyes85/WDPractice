<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method 2</title>
</head>
<body>

	
	<%
	double lengthCm = Double.parseDouble(request.getParameter("length"));
	String[] types = request.getParameterValues("type");
	%>
	
	<h2>변환 결과</h2>
	입력값 : <%=lengthCm %> cm
	
	<hr>
	
	
	<%
	for(String type:types)
		if(type.equals("inch")){
			double lengthInch = lengthCm / 2.54;
			
			%>
			<%=lengthInch %> in
			<br>
			<%
		} else if(type.equals("yard")){
			double lengthYard = lengthCm / 91.44;
			
			%>
			<%=lengthYard %> yd
			<br>
			<%
		} else if(type.equals("feet")){
			double lengthFeet = lengthCm / 30.48;
			
			%>
			<%=lengthFeet %> ft
			<br>
			<%
		} else if(type.equals("meter")){
			double lengthMeter = lengthCm / 100;
			
			%>
			<%=lengthMeter %> m
			<br>
			<%
		}	
	%>
</body>
</html>