package com.minieyes.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletPractice01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		
		//MIME 표준 정의 텍스트
		response.setContentType("text/plain");
		
		//날짜 저장하는 클래스
		Date now = new Date();
		
		PrintWriter out = response.getWriter();
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy년 MM월 dd일");
		
		String dateString = format.format(now);
		
		out.println("오늘의 날짜는 " + dateString);
		
		
		
	}
	

}
