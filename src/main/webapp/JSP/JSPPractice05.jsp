<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method 2</title>
</head>
<body>

	<h1>길이변환</h1>
	<form method="post" action="/p/JSP/JSPPractice05_2.jsp">
		<input type="text" name="length">cm <br>
		<label>인치<input type="checkbox" name="type" value="inch"></label>
		<label>야드<input type="checkbox" name="type" value="yard"></label>
		<label>피트<input type="checkbox" name="type" value="feet"></label>
		<label>미터<input type="checkbox" name="type" value="meter"></label>
		<input type="submit" value="변환">
	
	</form>

</body>
</html>