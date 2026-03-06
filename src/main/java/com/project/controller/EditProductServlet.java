package com.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.dao.ProductDao;
import com.project.dto.ProductDTO;

@WebServlet("/editProduct")
public class EditProductServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		try {
			ProductDao productDao=new ProductDao();
			ProductDTO productDTO= productDao.getProductById(id);
			req.setAttribute("productDTO", productDTO);
			req.getRequestDispatcher("editProduct.jsp").forward(req, resp);
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	

}
