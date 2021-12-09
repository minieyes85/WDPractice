package com.minieyes.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/p05")
public class ServletPractice05 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html");
		
		PrintWriter out = resp.getWriter();
		
		// 이름, 나이 파라메터
		String numberString = req.getParameter("number");
		
		int number = Integer.parseInt(numberString);
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Get Method 와 HTML</title>");		
		out.println("</head>");
		
		out.println("<body>");
		out.println("<ul>");
		
		for(int i = 1 ; i<= 9 ; i++) {
			out.println("<li>" + number + " X " + i + " = " + number*i);
		}
		
		
		out.println("</ul>");
		out.println("</body>");
		out.println("</html>");
		
	}

}
