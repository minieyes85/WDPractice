<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
		<section>
		
		<%@ include file="data.jsp" %>
		
		<%
			String category = request.getParameter("category");		
		%>
		
		<table class="table text-center font-weight-bold">
			<thead>
				<tr>
					<td>채널</td>
					<td>채널명</td>
					<td>카테고리</td>
				</tr>
			</thead>
			
			<tbody>
			<%			
			for(Map<String, String> tmap:list){
				if(category.equals("전체") || category.equals(tmap.get("category"))){
					%>
					<tr>
						<td><%=tmap.get("ch") %></td>
						<td><%=tmap.get("name") %></td>
						<td><%=tmap.get("category") %></td>
					</tr>				
					<%
				}
			}
					
			%>
			
			</tbody>
		
		</table>
		
		
		</section>