package com.minieyes.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minieyes.common.MysqlService;

@WebServlet("/db/practice02Delete.do")
public class Practice02_1 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		resp.setContentType("text/plain");
		
		PrintWriter out = resp.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String inputId = req.getParameter("id");
		
		String deleteQuery = "DELETE FROM `favorite` WHERE (`id` = '" + inputId + "');";
		
		mysqlService.update(deleteQuery);
		
		resp.sendRedirect("/p/JSP_db/p02.jsp");
		
		mysqlService.disconnect();
	
	
	}

}