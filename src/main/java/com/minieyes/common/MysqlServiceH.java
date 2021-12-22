package com.minieyes.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlServiceH {
	
	private static MysqlServiceH mysqlService = null;
	
	// 접속 주소, 아이디, 패스워드
	private String url;
	private String id;
	private String password;
	
	// 접속 관리 객체
	private Connection conn;
	private Statement statement;
	
	// 객체 생성 관리
	// 싱글턴 패턴
	
	public static MysqlServiceH getInstance() {
		if(mysqlService == null) {
			mysqlService = new MysqlServiceH();
		}
		return mysqlService;
	}
	
	//객체 생성해서 돌려주는 메소드
	
	private MysqlServiceH() {
		this.url = "jdbc:mysql://192.168.55.250:3306/root";
		this.id = "root";
		this.password = "176poweriy";
	}
	
	// 접속 기능
	
	public void connect() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			this.conn = DriverManager.getConnection(this.url, this.id, this.password);
			this.statement = conn.createStatement();			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}				
	}
	
	// 접속 끊기 기능
	
	public void disconnect() {
		try {
			this.statement.close();
			this.conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
		
	// select 쿼리 수행 기능
	public ResultSet select(String query) {
		try {
			return this.statement.executeQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
		
	// insert, update, delete 쿼리 수행 기능
	public int update(String query) {
		try {
			return this.statement.executeUpdate(query);
		} catch (SQLException e) {
			e.printStackTrace();
			return (Integer) null;
		}
	}
	
}
