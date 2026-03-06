package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.project.dto.ProductDTO;
import com.project.util.DBConnection;

public class ProductDao {

	public List<ProductDTO> getAllProfuct() {
		List<ProductDTO> list = new ArrayList<ProductDTO>();

		try {
			Connection connection = DBConnection.getConnection();
			String sql = "Select * from products";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				ProductDTO productDTO = new ProductDTO();

				productDTO.setId(resultSet.getInt("id"));
				productDTO.setName(resultSet.getString("name"));
				productDTO.setPrice(resultSet.getDouble("price"));
				productDTO.setDescription(resultSet.getString("description"));

				list.add(productDTO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	public boolean addProduct(ProductDTO productDTO) {
		boolean status = false;
		try {
			Connection connection = DBConnection.getConnection();

			String sql = "insert into products (name,price,description,image) values (?,?,?,?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, productDTO.getName());
			preparedStatement.setDouble(2, productDTO.getPrice());
			preparedStatement.setString(3, productDTO.getDescription());
			preparedStatement.setString(4, productDTO.getImage());

			int num = preparedStatement.executeUpdate();
			if (num > 0) {
				status = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public ProductDTO getProductById(int id) {
		ProductDTO dto=null;
		try {
			Connection connection = DBConnection.getConnection();
			String sql = "select * from products where id = ?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setInt(1, id);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next())
			{
				String name = resultSet.getString("name");
				String price = resultSet.getString("price");
				String description = resultSet.getString("description");
				String image = resultSet.getString("image");
				 dto=new ProductDTO();
				dto.setId(id);
				dto.setName(name);
				dto.setPrice(Double.parseDouble(price));
				dto.setDescription(description);
				dto.setImage(image);
				return dto;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	public boolean updateProduct(ProductDTO productDTO) {
		
boolean status = false;
try {
	Connection connection = DBConnection.getConnection();

	String sql = "UPDATE products SET name=?, price=?, description=?, image=? WHERE id=?";
	PreparedStatement preparedStatement = connection.prepareStatement(sql);
	preparedStatement.setString(1, productDTO.getName());
	preparedStatement.setDouble(2, productDTO.getPrice());
	preparedStatement.setString(3, productDTO.getDescription());
	preparedStatement.setString(4, productDTO.getImage());
	preparedStatement.setInt(5, productDTO.getId());

	int num = preparedStatement.executeUpdate();
	if (num > 0) {
		status = true;
	}
} catch (Exception e) {
	e.printStackTrace();
}
return status;
	}

	public boolean deleteProduct(int id) throws Exception {

        Connection con = DBConnection.getConnection();
        String sql = "DELETE FROM products WHERE id=?";

        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, id);

        return ps.executeUpdate() > 0;
    }


}
