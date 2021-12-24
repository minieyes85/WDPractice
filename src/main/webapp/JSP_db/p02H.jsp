<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.minieyes.common.*" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>JSP와 database 연동</title>
</head>
<body>
	<%
	MysqlServiceH mysqlService = MysqlServiceH.getInstance();
	mysqlService.connect();
	
	String query = "SELECT * FROM `favorite`";
	
	ResultSet resultSet = mysqlService.select(query);
	
	%>
	
	<div class="container">
		<div class="mt-5">
		<button class="btn btn-success" onclick="location.href='p02Input.jsp'">사이트 추가하기</button>
		</div>
		<table class="table text-center mt-3">
		
		<thead>
			<tr>
				<td>사이트</td>
				<td>사이트 주소</td>
			</tr>
		</thead>
		
		<tbody>
			<%
			while(resultSet.next()){
				
				String name = resultSet.getString("name");
				String url = resultSet.getString("url");
				%>
				<tr>
					<td><%=name %></td>
					<td><a href="<%=url %>"><%=url %></a></td>
				</tr>
				<%
			}
			%>		
		</tbody>
			
		</table>
	</div>
</body>
</html>