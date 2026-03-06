<%@ page import="com.project.dto.ProductDTO" %>
<%
ProductDTO p = (ProductDTO) request.getAttribute("productDTO");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Product</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #36b9cc, #4e73df);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .form-container {
        background: #fff;
        padding: 30px;
        width: 380px;
        border-radius: 12px;
        box-shadow: 0px 8px 25px rgba(0,0,0,0.2);
    }

    .form-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #4e73df;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    .form-group input {
        width: 100%;
        padding: 8px;
        border-radius: 6px;
        border: 1px solid #ccc;
        transition: 0.3s;
    }

    .form-group input:focus {
        border-color: #4e73df;
        box-shadow: 0px 0px 5px rgba(78,115,223,0.5);
        outline: none;
    }

    .btn {
        width: 100%;
        padding: 10px;
        background-color: #4e73df;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 15px;
        cursor: pointer;
        transition: 0.3s;
        margin-top: 10px;
    }

    .btn:hover {
        background-color: #2e59d9;
    }

    .cancel-btn {
        background-color: #e74a3b;
    }

    .cancel-btn:hover {
        background-color: #c0392b;
    }
</style>
</head>

<body>

<div class="form-container">
    <h2>Update Product</h2>

    <form action="updateProduct" method="post">

        <input type="hidden" name="id" value="<%=p.getId()%>">

        <div class="form-group">
            <label>Product Name</label>
            <input type="text" name="name" value="<%=p.getName()%>" required>
        </div>

        <div class="form-group">
            <label>Price</label>
            <input type="number" step="0.01" name="price" value="<%=p.getPrice()%>" required>
        </div>

        <div class="form-group">
            <label>Description</label>
            <input type="text" name="description" value="<%=p.getDescription()%>" required>
        </div>

        <div class="form-group">
            <label>Image Name</label>
            <input type="text" name="image" value="<%=p.getImage()%>">
        </div>

        <input type="submit" value="Update Product" class="btn">
        
        <button type="button" class="btn cancel-btn"
            onclick="window.location.href='viewproduct'">
            Cancel
        </button>

    </form>
</div>

</body>
</html>