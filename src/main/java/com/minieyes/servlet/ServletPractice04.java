package com.minieyes.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/p04")
public class ServletPractice04 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head><title>URL mapping(annotation)2</title></head>");
		out.println("<body>");
		out.println("<ul>");
		
		for(int i = 1 ; i <= 30 ; i++) {
			out.println("<li>"+ i + "번째 리스트 </li>");
		}
		
		out.println("</ul>");
		out.println("</body>");
		out.println("</html>");
	}

}