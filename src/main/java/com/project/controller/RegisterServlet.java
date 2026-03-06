package com.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.dao.UserDao;
import com.project.dto.Users;

@WebServlet("/registerUser")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String mobile = req.getParameter("mobile");
		String password = req.getParameter("password");
		String  confirmPassword=req.getParameter("confirmPassword");
		if (!password.equals(confirmPassword)) {
			resp.sendRedirect("register.jsp?error=passwordMismatch");
			return;
		}
		Users user = new Users();
		user.setName(name);
		user.setEmail(email);
		user.setMobile(mobile);
		user.setPassword(password);
		user.setRole("USER");

		UserDao dao = new UserDao();
		boolean registerUser = dao.registerUser(user);
		if(registerUser) {
		    resp.sendRedirect("register.jsp?success=true");
		} else {
		    resp.sendRedirect("register.jsp?error=true");
		}
		//super.doPost(req, resp);
	}

}
