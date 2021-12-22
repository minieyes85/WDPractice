<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.minieyes.common.MysqlService" %>
<%@ page import="java.sql.*" %>

<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	String selectQuery = "SELECT * FROM `used_goods`";
	
	ResultSet resultSet = mysqlService.select(selectQuery);
	
%>

<section class = "bg-info d-flex flex-wrap justify-content-between">
	
	<%
	while(resultSet.next()){
		
		String imgUrl = resultSet.getString("picture");
		String title = resultSet.getString("title");
		int price = resultSet.getInt("price");
		int sellerId = resultSet.getInt("sellerId");
		
		%>
		
		<div class="border" id="item">
			<div id="imgBoundary"><img id="itemImg" src="<%=imgUrl%>"></div>	 	
	 		<div><%=title%></div>
	 		<div><%=price%>원</div>
	 		<div><%=sellerId%></div>
		</div>
		
		<%
	}
	
	%>
	
	<div class="border" id="item">
	 item No.1
	</div>
	<div class="border" id="item">
	 item No.2
	</div>
	<div class="border" id="item">
	 item No.3
	</div>
	<div class="border" id="item">
	 item No.4
	</div>
	<div class="border" id="item">
	 item No.5
	</div>
	<div class="border" id="item">
	 item No.6
	</div>
</section>