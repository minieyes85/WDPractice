package com.minieyes.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/p03")
public class ServletPractice03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		
		String dateString = format.format(now);
		
		out.println("<html>");
		out.println("<head><title>URL mapping(annotation)1</title></head>");
		out.println("<body>");
		out.println("<h1>[단독] 고양이가 야옹해</h1>");
		out.println("<br>");
		out.println("기사 입력시간 : " + dateString);
		out.println("<hr> 끝");
		out.println("</body>");
		out.println("</html>");
		
		
	}

}
