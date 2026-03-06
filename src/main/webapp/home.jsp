<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.project.dto.Users" %>
<%
   Users user = (Users) session.getAttribute("user");
      
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard | E-Cart</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(to right, #4e73df, #1cc88a);
}
.card {
    border-radius: 15px;
}
.navbar {
    background-color: #343a40 !important;
}
.dashboard {
    margin-top: 50px;
}
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container">
    <a class="navbar-brand" href="#">🛒 E-Cart</a>
    
    <div class="ms-auto text-white">
        Welcome, <b><%= user.getName() %></b>
        <a href="logout" class="btn btn-danger btn-sm ms-3">Logout</a>
    </div>
  </div>
</nav>

<div class="container dashboard">
    <div class="row text-center">

        <!-- Products -->
        <div class="col-md-3 mb-4">
            <div class="card shadow-lg p-3">
                <h4>🛍 Products</h4>
                <p>Browse all available products</p>
                <a href="products" class="btn btn-primary">View</a>
            </div>
        </div>

        <!-- Cart -->
        <div class="col-md-3 mb-4">
            <div class="card shadow-lg p-3">
                <h4>🛒 My Cart</h4>
                <p>Check your selected items</p>
                <a href="cart" class="btn btn-success">Go to Cart</a>
            </div>
        </div>

        <!-- Orders -->
        <div class="col-md-3 mb-4">
            <div class="card shadow-lg p-3">
                <h4>📦 My Orders</h4>
                <p>Track your order history</p>
                <a href="orders" class="btn btn-warning">View Orders</a>
            </div>
        </div>

        <!-- Profile -->
        <div class="col-md-3 mb-4">
            <div class="card shadow-lg p-3">
                <h4>👤 Profile</h4>
                <p>Manage your account details</p>
                <a href="profile.jsp" class="btn btn-dark">View Profile</a>
            </div>
        </div>

    </div>
</div>

<footer class="text-center mt-5 p-3 bg-dark text-white">
    © 2026 E-Cart | Developed by Bhushan
</footer>

</body>
</html>