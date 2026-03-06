package com.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.dao.UserDao;


@WebServlet("/resetPassword")
public class ResetPasswordServlet extends HttpServlet {
	

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		
		HttpSession session=request.getSession();
		
		String email =(String) session.getAttribute("email");
		
		UserDao dao=new UserDao();
		dao.updatePassword(email, confirmPassword);
		response.sendRedirect("login.jsp");
		
	}

}
