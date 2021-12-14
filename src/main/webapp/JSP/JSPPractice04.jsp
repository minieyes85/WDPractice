<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method 1</title>
</head>
<body>
	<h1>사칙연산</h1>
	<form action="/p/JSP/JSPPractice04_2.jsp" method="post">
	<input type="text" name="n1">
	<select name="calcMethod">
	<option value="add" selected="selected">+</option>
	<option value="sub">-</option>
	<option value="times">*</option>
	<option value="div">/</option>
	</select>
	<input type="text" name="n2">
	<input type="submit" value="계산">	
	</form>
	
</body>
</html>