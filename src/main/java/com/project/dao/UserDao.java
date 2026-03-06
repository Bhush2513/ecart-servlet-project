package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.catalina.User;

import com.project.dto.Users;
import com.project.util.DBConnection;

public class UserDao {

	public boolean registerUser(Users user) {
		boolean status=false;
		try {
			Connection connection=DBConnection.getConnection();
			String insertQuery="INSERT INTO users(name,email,mobile, password,role) VALUES (?, ?, ?,?,?)";
			
			PreparedStatement ps=connection.prepareStatement(insertQuery);
			ps.setString(1,user.getName());
			ps.setString(2,user.getEmail());
			ps.setString(3,user.getMobile());
			ps.setString(4,user.getPassword());
			ps.setString(5,user.getRole());
			
			int rows = ps.executeUpdate();
			if(rows>0) {
				status=true;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return status;
		
		
	}
	
	public Users loginUser(String email,String password) {
		Users user=null;
		try {
			Connection connection=DBConnection.getConnection();
			
			String sql= "SELECT * FROM USERS WHERE email=? AND password=?"; 
			PreparedStatement ps=connection.prepareStatement(sql);
			
			ps.setString(1,email);
			ps.setString(2,password);
			
			ResultSet resultSet = ps.executeQuery();
			if(resultSet.next()) {
			 user=new Users();
				user.setName(resultSet.getString("name"));
				user.setEmail(resultSet.getString("email"));
				user.setMobile(resultSet.getString("mobile"));
				user.setPassword(resultSet.getString("password"));
				user.setRole(resultSet.getString("role"));
				user.setId(resultSet.getLong("id"));
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
		
	}
	public boolean checkEmailExists(String email) {
		boolean status=false;
		try {
		Connection connection=DBConnection.getConnection();
		
		String sql="select * from users where email= ?";
		
		PreparedStatement preparedStatement=connection.prepareStatement(sql);
		
		preparedStatement.setString(1,email);
		
		ResultSet resultSet = preparedStatement.executeQuery();
		
		status=resultSet.next();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return status;
		
	}
	
	public boolean updatePassword( String email,String password) {
		boolean status=false;
		
		try {
			
			Connection connection=DBConnection.getConnection();
			
			String sql= "update users set password=? where email= ?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			
			preparedStatement.setString(1, password);
			preparedStatement.setString(2, email);
			
			int update = preparedStatement.executeUpdate();
			if(update>0) {
				status=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return status;
		
		
		
	}
}
