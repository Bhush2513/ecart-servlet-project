<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Cart | Register</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: linear-gradient(to right, #36d1dc, #5b86e5);
}

.register-card {
	margin-top: 80px;
	border-radius: 15px;
}
</style>

</head>
<body>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">

				<div class="card register-card shadow-lg">
					<div class="card-header text-center bg-primary text-white">
						<h3>Create Account</h3>
					</div>
					<%
					String errorType = request.getParameter("error");

					if ("passwordMismatch".equals(errorType)) {
					%>
					<script>
						alert("Password and Confirm Password must match!");
					</script>
					<%
					}
					%>
					<%
					String success = request.getParameter("success");
					String error = request.getParameter("error");

					if ("true".equals(success)) {
					%>
					<script>
						alert("Registration Successful!");
					</script>
					<%
					}

					if ("true".equals(error)) {
					%>
					<script>
						alert("Registration Failed!");
					</script>
					<%
					}
					%>
					<div class="card-body">

						<form action="registerUser" method="post">

							<div class="mb-3">
								<label>Full Name</label> <input type="text" name="name"
									class="form-control" placeholder="Enter Full Name" required>
							</div>

							<div class="mb-3">
								<label>Email</label> <input type="email" name="email"
									class="form-control" placeholder="Enter Email" required>
							</div>

							<div class="mb-3">
								<label>Mobile Number</label> <input type="text" name="mobile"
									class="form-control" placeholder="Enter Mobile Number" required>
							</div>

							<div class="mb-3">
								<label>Password</label> <input type="password" name="password"
									class="form-control" placeholder="Enter Password" required>
							</div>

							<div class="mb-3">
								<label>Confirm Password</label> <input type="password"
									name="confirmPassword" class="form-control"
									placeholder="Confirm Password" required>
							</div>

							<div class="d-grid">
								<button type="submit" class="btn btn-success">Register</button>
							</div>

						</form>

					</div>

					<div class="card-footer text-center">
						Already have an account? <a href="login.jsp">Login Here</a>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>