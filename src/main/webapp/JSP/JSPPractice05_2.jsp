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
	
	for(String type:types)
		if(type.equals("inch")){
			
		}
	
	
	%>

	
	
	<h1>변환결과</h1>
	<%=lengthCm %>cm
	<hr>
</body>
</html>