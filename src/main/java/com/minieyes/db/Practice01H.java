package com.minieyes.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minieyes.common.MysqlServiceH;

@WebServlet("/db/practice01H")
public class Practice01H extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		resp.setContentType("text/plain");
		
		PrintWriter out = resp.getWriter();
	
		MysqlServiceH mysqlService = MysqlServiceH.getInstance();
		mysqlService.connect();
		
//		String insertQuery = "INSERT INTO `real_estate`\r\n"
//				+ "(`realtorId`,`address`,`area`,`type`,`price`)\r\n"
//				+ "VALUE\r\n"
//				+ "(3,'헤라펠리스 101동 5305호',350,'매매',150000);";
//		int count = mysqlService.update(insertQuery);
//		
//		out.println("삽입 : " + count);
		
		String selectQuery = "SELECT * FROM `real_estate`";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		try {
			while(resultSet.next()) {
				out.print("매물 주소 : " + resultSet.getString("address"));
				out.print(" 면적 : " + resultSet.getInt("area"));
				out.println(" 타입 : " + resultSet.getString("type"));
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		mysqlService.disconnect();
		
	
	
	}

}
