<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<meta charset="UTF-8">

<title>Calendar 클래스 활용 2</title>

</head>

<body>
	<!-- 연도 달 셋팅 -->
	<%
		Calendar cal = Calendar.getInstance();
		// 달의 첫날로 설정(1일)
		cal.set(cal.DAY_OF_MONTH, 1);
		// 달의 첫날 요일 설정
		int firstDayOfWeek = cal.get(Calendar.DAY_OF_WEEK);	
		// 달의 마지막날 설정
		int lastDayOfMonth = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		// 출력 날짜 설정
		int space = firstDayOfWeek - 6 ;
		int spaceDays = space-1;
		int DaysOfMonth = space + lastDayOfMonth;
	
	%>
	
	<div class="container text-center">
		<div class="display-4 font-weight-bold">
			2021년 12월
		</div>
		<br>
		<table class="table display-4">			
			<thead class="font-weight-bold">
				<tr>
					<td class="text-danger">일</td>
					<td>월</td>
					<td>화</td>
					<td>수</td>
					<td>목</td>
					<td>금</td>
					<td class="text-primary">토</td>
				</tr>
			</thead>
			
			<tbody>				
				<%
				int i = 1;
				while(i <= DaysOfMonth){
					%>
					<tr>
					<%
					for(int j = 1 ; j <= 7 ; j++){
						
						if(space <= 0) {
							%>
							<td></td>
							<%
							i++;
							space++;
						} else {
							int day = cal.get(Calendar.DATE);
							if(i+spaceDays > lastDayOfMonth){
								break;
							} else {
								
								if(cal.get(Calendar.DAY_OF_WEEK) == 1){
									%>
									<td class = "text-danger"><%=day%></td>
									<%									
								} else if (cal.get(Calendar.DAY_OF_WEEK) == 7){
									%>
									<td class = "text-primary"><%=day%></td>
									<%
								} else {
									%>
									<td><%=day%></td>
									<%
								}
								
								cal.add(Calendar.DATE, 1);
								i++;							
							}							
						}
					}
					%>
					</tr>
					<%
				}
				%>
			</tbody>
		</table>
	</div>
</body>

</html>