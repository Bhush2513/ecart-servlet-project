package com.project.controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.dao.ProductDao;
import com.project.dto.ProductDTO;

@WebServlet("/updateProduct")
public class UpdateProductServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {

        ProductDTO p = new ProductDTO();

       
        p.setId(Integer.parseInt( req.getParameter("id")));
        p.setName(req.getParameter("name"));
        p.setPrice(Double.parseDouble(req.getParameter("price")));
        p.setDescription(req.getParameter("description"));
        p.setImage(req.getParameter("image"));

        try {
            new ProductDao().updateProduct(p);
        } catch (Exception e) {
            e.printStackTrace();
        }

        resp.sendRedirect("viewproduct");
    }
}