package com.minieyes.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minieyes.common.MysqlServiceH;

@WebServlet("/db/practice02H.do")
public class Practice02H extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		resp.setContentType("text/plain");
		
		PrintWriter out = resp.getWriter();
		
		MysqlServiceH mysqlService = MysqlServiceH.getInstance();
		mysqlService.connect();
		
		String inputName = req.getParameter("name");
		String inputUrl = req.getParameter("url");
		
		String inputQuery = "INSERT INTO `favorite`\r\n"
				+ "(`name`,`url`)\r\n"
				+ "VALUES\r\n"
				+ "('"+ inputName + "','" + inputUrl + "');";
		
		int count = mysqlService.update(inputQuery);
		
		out.println("DB return value : " + count);
		
		mysqlService.disconnect();
		
		resp.sendRedirect("/p/JSP_db/p02H.jsp");
	
	
	}

}