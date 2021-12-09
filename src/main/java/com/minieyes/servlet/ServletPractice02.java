package com.minieyes.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletPractice02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		//MIME 표준 텍스트
		response.setContentType("text/plain");
		
		Date now = new Date();
		
		PrintWriter out = response.getWriter();
		
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy년 M월 d일");
		
		String dateString = format1.format(now);
		
		SimpleDateFormat format2 = new SimpleDateFormat("HH시 m분 s초");
		
		String timeString = format2.format(now);
		
		out.println("오늘의 날짜는 " + dateString);
		
		out.println("현재 시간은 " + timeString + " 입니다.");
		
	}

}
