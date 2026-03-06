package com.project.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	public static Connection getConnection() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		 
		Connection connection=DriverManager.getConnection( "jdbc:mysql://localhost:3306/dsecart",
	            "root",
	            "root");
		return connection;
		
	}

}
