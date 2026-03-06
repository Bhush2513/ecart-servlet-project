package com.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.dao.ProductDao;
import com.project.dto.ProductDTO;

@WebServlet("/addProduct")
public class AddProductServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		double price = Double.parseDouble(req.getParameter("price"));
		String description = req.getParameter("description");
		String image = req.getParameter("image");
		ProductDTO productDTO=new ProductDTO();
		productDTO.setName(name);
		productDTO.setPrice(price);
		productDTO.setDescription(description);
		productDTO.setImage(image);
		
		ProductDao productDao=new ProductDao();
		boolean status= productDao.addProduct(productDTO);
		if(status) {
			resp.sendRedirect("viewproduct");
		}
		else
			resp.sendRedirect("addProduct.jsp");
		
	}
	

}
