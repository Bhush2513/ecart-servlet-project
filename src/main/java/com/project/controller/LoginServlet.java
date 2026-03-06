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
import com.project.dto.Users;

@WebServlet("/loginUser")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password=req.getParameter("password");
		
		UserDao dao=new UserDao();
		Users loginUser = dao.loginUser(email, password);
		
		if(loginUser!=null) {
			HttpSession session = req.getSession();
			session.setAttribute("user",loginUser);
			if(loginUser.getRole().equals("USER")) {
			resp.sendRedirect("home.jsp");
			}
			else if(loginUser.getRole().equals("ADMIN")) {
				resp.sendRedirect("adminDashboard.jsp");
			}
			return;
		}
		else {
			resp.sendRedirect("login.jsp");
		}
		//super.doPost(req, resp);
	}

}
