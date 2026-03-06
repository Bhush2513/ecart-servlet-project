<!DOCTYPE html>
<html>
<head>
<title>Forgot Password</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #4e73df, #1cc88a);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background: white;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        width: 350px;
        text-align: center;
    }

    h3 {
        margin-bottom: 25px;
        color: #333;
    }

    input[type="email"] {
        width: 100%;
        padding: 12px;
        margin-bottom: 20px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
        transition: 0.3s;
    }

    input[type="email"]:focus {
        border-color: #4e73df;
        outline: none;
        box-shadow: 0 0 5px rgba(78, 115, 223, 0.5);
    }

    button {
        width: 100%;
        padding: 12px;
        background: #4e73df;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
    }

    button:hover {
        background: #2e59d9;
    }

    .back-link {
        margin-top: 15px;
        display: block;
        font-size: 14px;
    }

    .back-link a {
        text-decoration: none;
        color: #4e73df;
    }

    .back-link a:hover {
        text-decoration: underline;
    }

</style>

</head>
<body>

<div class="container">
    <h3>Forgot Password</h3>
<%
    String error = request.getParameter("error");
    if(error != null && error.equals("invalidEmail")) {
%>
        <p style="color:red; text-align:center;">
            Invalid Email! Please enter registered email.
        </p>
<%
    }
%>
    <form action="forgotPassword" method="get">
        <input type="email" name="email" placeholder="Enter your email" required>
        <button type="submit">Next</button>
    </form>

    <div class="back-link">
        <a href="login.jsp">Back to Login</a>
    </div>
</div>

</body>
</html>