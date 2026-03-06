<!DOCTYPE html>
<html>
<head>
<title>Reset Password</title>

<style>

body{
    margin:0;
    padding:0;
    font-family: Arial, sans-serif;
    background: linear-gradient(to right,#4e73df,#1cc88a);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.container{
    background:white;
    padding:40px;
    width:350px;
    border-radius:10px;
    box-shadow:0 8px 20px rgba(0,0,0,0.2);
    text-align:center;
}

h3{
    margin-bottom:25px;
    color:#333;
}

input{
    width:100%;
    padding:12px;
    margin:10px 0;
    border-radius:5px;
    border:1px solid #ccc;
    font-size:14px;
    transition:0.3s;
}

input:focus{
    border-color:#4e73df;
    outline:none;
    box-shadow:0 0 5px rgba(78,115,223,0.5);
}

button{
    width:100%;
    padding:12px;
    margin-top:10px;
    background:#4e73df;
    color:white;
    border:none;
    border-radius:5px;
    font-size:16px;
    cursor:pointer;
    transition:0.3s;
}

button:hover{
    background:#2e59d9;
}

.back{
    margin-top:15px;
    font-size:14px;
}

.back a{
    text-decoration:none;
    color:#4e73df;
}

.back a:hover{
    text-decoration:underline;
}

</style>

</head>

<body>

<div class="container">

<h3>Reset Password</h3>

<form action="resetPassword" method="post">

<input type="hidden" name="email" value="<%= request.getAttribute("email") %>">

<input type="password" name="password" placeholder="Enter New Password" required>

<input type="password" name="confirmPassword" placeholder="Confirm Password" required>

<button type="submit">Update Password</button>

</form>

<div class="back">
<a href="login.html">Back to Login</a>
</div>

</div>

</body>
</html>