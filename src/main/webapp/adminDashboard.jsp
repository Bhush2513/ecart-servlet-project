<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.project.dto.Users" %>

<%
Users user = (Users) session.getAttribute("user");

if(user == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
    background: linear-gradient(to right, #4e73df, #1cc88a);
}
.card{
    transition: 0.3s;
}
.card:hover{
    transform: scale(1.05);
}
</style>

</head>
<body>

<div class="container mt-5">

    <div class="text-center text-white mb-5">
        <h1>Welcome Admin 👋</h1>
        <h4><%= user.getName() %></h4>
    </div>

    <div class="row">

        <!-- Add Product -->
        <div class="col-md-4">
            <div class="card shadow-lg p-4 text-center">
                <h4>Add Product</h4>
                <p>Add new products to store</p>
                <a href="addProduct.jsp" class="btn btn-primary">Add Product</a>
            </div>
        </div>

        <!-- View Products -->
        <div class="col-md-4">
            <div class="card shadow-lg p-4 text-center">
                <h4>Manage Products</h4>
                <p>View, Edit and Delete Products</p>
                <a href="viewproduct" class="btn btn-warning">View Products</a>
            </div>
        </div>

        <!-- Logout -->
        <div class="col-md-4">
            <div class="card shadow-lg p-4 text-center">
                <h4>Logout</h4>
                <p>Securely logout from system</p>
                <a href="logout" class="btn btn-danger">Logout</a>
            </div>
        </div>

    </div>

</div>

</body>
</html>