package com.minieyes.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/p06")
public class ServletPractice06 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setCharacterEncoding("utf-8");
//		resp.setContentType("text/html");
		
		PrintWriter out = resp.getWriter();
		
		
		String number1String = req.getParameter("number1");
		String number2String = req.getParameter("number2");
		
		int number1 = Integer.parseInt(number1String);
		int number2 = Integer.parseInt(number2String);
		
		out.println("{\"addition\":" + (number1+number2) + ",\"subtraction\":" + (number1-number2) + ",\"multiplication\":" + (number1*number2) + ",\"division\":" + (number1/number2) + "}");
		
	}

}
