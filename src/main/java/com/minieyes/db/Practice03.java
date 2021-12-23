package com.minieyes.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minieyes.common.*;

@WebServlet("/db/add.do")

public class Practice03 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		resp.setContentType("text/plain");
		
		PrintWriter out = resp.getWriter();
		
		MysqlServiceH mysqlService = MysqlServiceH.getInstance();
		mysqlService.connect();
		
		String sellerIdStr = req.getParameter("sellerId");
		int sellerId = Integer.parseInt(sellerIdStr);
		String title = req.getParameter("subject");
		String priceStr = req.getParameter("price");
		int price = Integer.parseInt(priceStr);
		String description = req.getParameter("description");
		String url = req.getParameter("url");
		
		String inputQuery = "INSERT INTO `used_goods`\r\n"
				+ "(`sellerId`,`title`,`price`,`description`,`picture`)\r\n"
				+ "VALUE\r\n"
				+ "('" + sellerId + "','" + title + "','" + price + "','" + description + "','" + url + "');";
		
		int count = mysqlService.update(inputQuery);
		
		out.println("DB return value : " + count);
		
		mysqlService.disconnect();
		
		resp.sendRedirect("/p/JSP_db/03/");
	}
}
