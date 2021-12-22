package com.minieyes.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minieyes.common.MysqlService;

@WebServlet("/db/practice02")
public class Practice02 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		resp.setContentType("text/plain");
		
		PrintWriter out = resp.getWriter();
	
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "SELECT * FROM `real_estate`";
		ResultSet resultSet = mysqlService.select(query);
		
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