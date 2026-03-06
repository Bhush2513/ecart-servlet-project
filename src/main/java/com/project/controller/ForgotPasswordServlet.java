package com.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Response;

import com.project.dao.UserDao;

@WebServlet("/forgotPassword")
public class ForgotPasswordServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		
		UserDao userDao=new UserDao();
		boolean emailExists = userDao.checkEmailExists(email);
		System.out.println(emailExists);
		if(emailExists){
			HttpSession session=req.getSession();
			session.setAttribute("email",email);
			
			req.getRequestDispatcher("resetPassword.jsp").forward(req, resp);
			
		}
		else {
			resp.sendRedirect("forgotPassword.jsp?error=invalidEmail");
		}
		
		
	}

}
