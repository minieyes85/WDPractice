<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.minieyes.common.*" %>
<%@ page import="java.sql.*" %>

<%
	MysqlServiceH mysqlService = MysqlServiceH.getInstance();
	mysqlService.connect();
	
	String selectQuery = "SELECT * FROM `seller`";
	
	ResultSet resultSet = mysqlService.select(selectQuery);
%>

<section>
	<form type="get" action="/p/db/add.do">
	<div id="addForm">
		<div id="addTitle">물건 올리기</div>
		<div class="d-flex mt-3">
			<div id="addSelect">
			<select class="custom-select" name="sellerId">
				<option selected>- 아이디 선택 -</option>
				<%
				while(resultSet.next()){					
					int id = resultSet.getInt("id");
					String nickName = resultSet.getString("nickname");					
					%>					
					<option value="<%=id%>"><%=nickName%></option>
					<%
				}				
				%>
			</select>
			</div>
			
			<div id="addSubject" class="pl-3 input-group">
				<input type="text" name="subject" class="form-control" placeholder="제목">
			</div>
			
			<div class="pl-3">
				<div class="input-group">
  					<input type="text" class="form-control" placeholder="가격" name="price">
  					<div class="input-group-append">
    					<span class="input-group-text">원</span>
					</div>
				</div>
			</div>
		</div>
		<div class="mt-3" id="addTextarea">
			<textarea class="form-control" name="description"></textarea>
		</div>
		<div class="mt-3">
			<div class="input-group">
  				<div class="input-group-prepend">
  					<span class="input-group-text font-weight-bold">이미지 url</span>
  				</div>
  				<input type="text" class="form-control" name="picture">
			</div>
		</div>
		<div class="mt-3">
			<button type="submit" class="btn btn-block">저장</button>
		</div>
		
	</div>
	</form>		
<%
	mysqlService.disconnect();
%>
</section>