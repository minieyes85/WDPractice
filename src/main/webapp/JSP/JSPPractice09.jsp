<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>Calendar 클래스 활용 1</title>
</head>
<body>
	
	
	
	<%
	Calendar cal = Calendar.getInstance();
	Date date = cal.getTime();
	SimpleDateFormat format = new SimpleDateFormat("yyyy년 M월 d일");
	%>
	<div class="container">
	
	<div class="h1">오늘부터 1일</div>
	<div>오늘 : <span class="text-primary"><%=format.format(date) %></span></div>
	
	<%
	for(int i = 1; i <= 10 ; i++){
		cal.add(Calendar.DATE, 100);
		date = cal.getTime();
		%>
	<div><%=i*100 %>일 : <span class="text-danger"> <%=format.format(date) %> </span> </div>
		<%
		
	}
	%>
	
	</div>
	
	


</body>
</html>