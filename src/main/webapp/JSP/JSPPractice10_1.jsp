<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>Calendar 클래스 활용 2</title>
</head>
<body>
	<div class="container mt-5 display-4 text-center">
		<div class="text-primary">보고 싶은 달력 선택</div>
		<hr>
		<form method="post" action="/p/JSP/JSPPractice10.jsp">
			<input type="text" name="year">년도
		
			<select name="month">
			<%
			for(int i = 1 ; i <= 12 ; i++){
				%>
				<option value="<%=i %>"><%=i %></option>				
				<%
			}			
			%>
			</select> 월
			<div><button class="btn btn-lg btn-primary" type="submit">선택완료</button></div>
			
		
		</form>
	
	</div>

</body>
</html>