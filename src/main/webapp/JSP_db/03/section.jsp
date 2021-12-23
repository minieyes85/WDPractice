<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.minieyes.common.*" %>
<%@ page import="java.sql.*" %>

<%
	// 외부 작업시 MysqlService 호출,
	// 집에서 작업시 MysqlServiceH 호출
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	String selectQuery = "SELECT * FROM `used_goods` AS `A` "
			+ "JOIN `seller` AS `B` "
			+ "ON A.sellerId = B.id";
	
	ResultSet resultSet = mysqlService.select(selectQuery);
%>

<section class = "d-flex flex-wrap">
	
	<%
	while(resultSet.next()){
		
		int id = resultSet.getInt("id");
		String imgUrl = resultSet.getString("picture");
		String title = resultSet.getString("title");
		int price = resultSet.getInt("price");
		String priceStr = String.format("%,d", price);
		String seller = resultSet.getString("nickname");
		
		%>
		
		<div id="item">
			<div id="imgBoundary"><img id="itemImg" src="<%=imgUrl%>" onerror="this.src='/p/img/noImg.jpg'"></div>	 
			<div id="goodsInfo">
				<div id="goodsTitle"><a href="/p/JSP_db/03/index.jsp?id=<%=id%>"><%=title%></a></div>
	 			<div id="goodsPrice"><%=priceStr%>원</div>
	 			<div id="goodsSeller"><%=seller%></div>
			</div>	
	 		
		</div>
		
		<%
	}
	
	%>

<%
	mysqlService.disconnect();
%>
	
</section>
