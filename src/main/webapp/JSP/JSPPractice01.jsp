<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>

	<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum1 = 0;
	for(int i = 0; i < scores.length ; i++){
		sum1 += scores[i];
	}
	
	float avg1 = sum1 / scores.length;
		
	%>
	
	<div>
	점수 평균은 <%=avg1 %> 입니다.
	</div>
	
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	int sum2 = 0;
	
	for(int i = 0 ; i < scoreList.size() ; i++) {
		if(scoreList.get(i).equals("O")){
			sum2 += 10;
		}
	}	
	
	%>
	
	<div>
	채점 결과는 <%=sum2 %>점 입니다.
	</div>
	
	
	<%!
		public int sum(int number) {
		int sum = 0;
		for(int i = 1 ; i <= number ; i++){
			sum += i;
		}
		
		return sum;
	}
	
	%>
	
	<div>1에서 50까지의 합은 <%= sum(50) %></div>
	
	<%
		String birthDay = "20010820";
		String yearStr = birthDay.substring(0, 4);
		int year = Integer.parseInt(yearStr);
		int now = 2021;
		int age = now - year + 1;	
	%>
	
	<div><%=birthDay %> 의 나이는 <%=age %>살 입니다.</div>
	
	
</body>
</html>