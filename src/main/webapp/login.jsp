<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Cart | Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(to right, #1d976c, #93f9b9);
}
.login-card {
    margin-top: 100px;
    border-radius: 15px;
}
</style>

</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">

            <div class="card login-card shadow-lg">
                <div class="card-header text-center bg-success text-white">
                    <h3>Login to E-Cart</h3>
                </div>

                <div class="card-body">

                    <% 
                        String error = (String) request.getAttribute("error-msg");
                        if(error != null){
                    %>
                        <div class="alert alert-danger text-center">
                            <%= error %>
                        </div>
                    <% } %>

                    <form action="loginUser" method="post">

                        <div class="mb-3">
                            <label>Email</label>
                            <input type="email" name="email" 
                                   class="form-control" 
                                   placeholder="Enter Email" required>
                        </div>

                        <div class="mb-3">
                            <label>Password</label>
                            <input type="password" name="password" 
                                   class="form-control" 
                                   placeholder="Enter Password" required>
                        </div>

                        <!-- Forgot Password -->
                        <div class="text-end mb-3">
                            <a href="forgotPassword.jsp" class="text-decoration-none">
                                Forgot Password?
                            </a>
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-success">
                                Login
                            </button>
                        </div>

                    </form>

                </div>

                <div class="card-footer text-center">
                    Don’t have an account?
                    <a href="register.jsp">Register Here</a>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>