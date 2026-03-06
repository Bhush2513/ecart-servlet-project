package com.project.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/*")
public class AuthFilter implements Filter {

   
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        // Get existing session (do NOT create new one)
        HttpSession session = req.getSession(false);

        // Get requested path
        String path = req.getServletPath();

        // Check if user is logged in
        boolean isLoggedIn = (session != null && session.getAttribute("user") != null);

        // Public pages (no login required)
        boolean isPublicPage =
                path.equals("/") ||
                path.equals("/index.jsp") ||
                path.equals("/login.jsp") ||
                path.equals("/register.jsp") ||
                path.equals("/loginUser") ||
                path.equals("/registerUser")||
         path.equals("/forgotPassword.jsp")||
         path.equals("/forgotPassword")||
         path.equals("/resetPassword")||
         path.equals("/resetPassword.jsp");
        // Static resources
        boolean isStaticResource =
                path.startsWith("/css/") ||
                path.startsWith("/js/") ||
                path.startsWith("/images/");

        if (isLoggedIn || isPublicPage || isStaticResource) {
            chain.doFilter(request, response);  // allow request
        } else {
            // Redirect to login page if not authenticated
            resp.sendRedirect(req.getContextPath() + "/login.jsp");
        }
    }
}