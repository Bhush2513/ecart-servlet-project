<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Cart | Home</title>

<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(to right, #4e73df, #1cc88a);
    color: white;
}
.hero {
    text-align: center;
    padding: 100px 20px;
}
.btn-custom {
    margin: 10px;
    width: 150px;
}
.navbar {
    background-color: #343a40 !important;
}
</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container">
  
    <a class="navbar-brand" href="#">🛒 E-Cart</a>

    <div class="collapse navbar-collapse">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link" href="register.jsp">Register</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="adminLogin.jsp">Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="products">Products</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="cart">Cart</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Hero Section -->
<div class="hero">
    <h1>Welcome to E-Cart</h1>
    <p>Your One Stop Online Shopping Destination</p>

    <a href="register.jsp" class="btn btn-light btn-custom">Register</a>
    <a href="login.jsp" class="btn btn-warning btn-custom">Login</a>
    <a href="products" class="btn btn-success btn-custom">Shop Now</a>
</div>

<!-- Footer -->
<footer class="text-center mt-5 p-3 bg-dark">
    © 2026 E-Cart | Designed by Bhushan
</footer>

</body>
</html>