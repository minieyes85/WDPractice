<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.minieyes.common.*" %>
<%@ page import="java.sql.*" %>

<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	int id = Integer.parseInt(request.getParameter("id"));
	
	String selectQuery = "SELECT * FROM `used_goods` AS `A` "
			+"JOIN `seller` AS `B` "
			+"ON A.sellerId = B.id "
			+"WHERE A.id =" + id;
	
	ResultSet resultSet = mysqlService.select(selectQuery);
%>

<section>
	<div>
		<%
		while(resultSet.next()){
			String title = resultSet.getString("title");
			String description = resultSet.getString("description");
			String url = resultSet.getString("picture");
			String nickName = resultSet.getString("nickname");
			
			%>
			<div>상품정보</div>
			<div><img src="<%=url %>"></div>
			<div><%=nickName %></div>
			<div><%=title %></div>
			<div><%=description %></div>
			<%
		}
		%>
		
		<div>
			<button type="button" onclick="location.href='index.jsp'">돌아가기</button>
		</div>
	
	</div>	
<%
	mysqlService.disconnect();
%>
</section>