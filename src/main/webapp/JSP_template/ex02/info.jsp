<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section>
	<%@ include file="data.jsp" %>
	
	<%
	String id = request.getParameter("id");
	String title = request.getParameter("title");
	if(id == null && title == null){
		%>
		<div class="border border-success d-flex">
			<div class="m-3">
				<img width="250" src="<%=artistInfo.get("photo") %>">
			</div>
			<div class="m-3">
				<p class="h2 font-weight-bold"><%=artistInfo.get("name") %></p>
				<p class="h5"><%=artistInfo.get("agency") %></p>
				<p class="h5"><%=artistInfo.get("debute") %> 데뷔</p>
			</div>								
		</div>
		<div class="mt-3">
			<p class="h2 ml-3">곡 목록</p>
			<table class="table text-center font-weight-bold mt-2">
				<thead>
					<tr>
						<td>No.</td>
						<td>제목</td>
						<td>앨범</td>
					</tr>
				</thead>
				<tbody>
				<%
				for(Map<String, Object> tMusicInfo:musicList) {
				%>
					<tr>
						<td><%=tMusicInfo.get("id") %></td>
						<td><a href="index.jsp?id=<%=tMusicInfo.get("id") %>"><%=tMusicInfo.get("title") %></a></td>
						<td><%=tMusicInfo.get("album") %></td>	
					</tr>
					<%
				}
				%>
				</tbody>				
			</table>	
		</div>
		<%
	} else if(title != null) {
		Map<String, Object> outputMusic = new HashMap<>();
		for(Map<String, Object> tMusic:musicList){
			if(title.equals(tMusic.get("title").toString())){
				outputMusic = tMusic;
				break;
			}
		}
				
		%>
		<p class="h3">곡 정보</p>
		<div class="border border-success d-flex">
			<div class="m-3">
				<img width="250" src="<%=outputMusic.get("thumbnail") %>">
			</div>
			<div class="m-3">
				<p class="h2 font-weight-bold"><%=outputMusic.get("title") %></p>
				<p class="h5 font-weight-bold text-success"><%=outputMusic.get("singer") %></p>
				<table class="text-secondary mt-3">
					<tr>
						<td width="90">앨범</td>
						<td><%=outputMusic.get("album") %></td>
					</tr>
					<tr>
						<td>재생시간</td>
						<%
						int time = Integer.parseInt(outputMusic.get("time").toString());
						int min = time / 60;
						int sec = time % 60;
						%>
						<td><%=min %>:<%=sec %></td>
					</tr>
					<tr>
						<td>작곡가</td>
						<td><%=outputMusic.get("composer") %></td>
					</tr>
					<tr>
						<td>작사가</td>
						<td><%=outputMusic.get("lyricist") %></td>
					</tr>
				</table>
			</div>								
		</div>
		<div class="mt-3 mb-3">
			<p class="h2">가사</p>
			<hr>
			<p>가사 정보 없음</p>
		</div>		
		<%	
	
	
	} else {
		Map<String, Object> outputMusic = new HashMap<>();
		for(Map<String, Object> tMusic:musicList){
			if(id.equals(tMusic.get("id").toString())){
				outputMusic = tMusic;
				break;
			}
		}
		%>
		<p class="h3">곡 정보</p>
		<div class="border border-success d-flex">
			<div class="m-3">
				<img width="250" src="<%=outputMusic.get("thumbnail") %>">
			</div>
			<div class="m-3">
				<p class="h2 font-weight-bold"><%=outputMusic.get("title") %></p>
				<p class="h5 font-weight-bold text-success"><%=outputMusic.get("singer") %></p>
				<table class="text-secondary mt-3">
					<tr>
						<td width="90">앨범</td>
						<td><%=outputMusic.get("album") %></td>
					</tr>
					<tr>
						<td>재생시간</td>
						<%
						int time = Integer.parseInt(outputMusic.get("time").toString());
						int min = time / 60;
						int sec = time % 60;
						%>
						<td><%=min %>:<%=sec %></td>
					</tr>
					<tr>
						<td>작곡가</td>
						<td><%=outputMusic.get("composer") %></td>
					</tr>
					<tr>
						<td>작사가</td>
						<td><%=outputMusic.get("lyricist") %></td>
					</tr>
				</table>
			</div>								
		</div>
		<div class="mt-3 mb-3">
			<p class="h2">가사</p>
			<hr>
			<p>가사 정보 없음</p>
		</div>		
		<%	
	}	
	%>	
</section>