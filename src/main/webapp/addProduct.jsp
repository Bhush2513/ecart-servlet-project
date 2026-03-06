<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #4e73df, #1cc88a);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .form-container {
        background: white;
        padding: 30px;
        width: 350px;
        border-radius: 10px;
        box-shadow: 0px 5px 20px rgba(0,0,0,0.2);
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
        margin-bottom: 5px;
        font-weight: bold;
    }

    .form-group input {
        width: 100%;
        padding: 8px;
        border-radius: 5px;
        border: 1px solid #ccc;
        outline: none;
        transition: 0.3s;
    }

    .form-group input:focus {
        border-color: #4e73df;
        box-shadow: 0px 0px 5px rgba(78,115,223,0.5);
    }

    .btn {
        width: 100%;
        padding: 10px;
        background: #4e73df;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: 0.3s;
    }

    .btn:hover {
        background: #2e59d9;
    }
</style>
</head>

<body>

<div class="form-container">
    <h2>Add Product</h2>

    <form action="addProduct" method="post">
        
        <div class="form-group">
            <label>Product Name</label>
            <input type="text" name="name" required>
        </div>

        <div class="form-group">
            <label>Price</label>
            <input type="number" step="0.01" name="price" required>
        </div>

        <div class="form-group">
            <label>Description</label>
            <input type="text" name="description" required>
        </div>

        <div class="form-group">
            <label>Image Name</label>
            <input type="text" name="image" placeholder="example.jpg">
        </div>

        <input type="submit" value="Add Product" class="btn">
         
         <button type="button" class="btn cancel-btn"
            onclick="window.location.href='adminDashboard.jsp'">
            Cancel
        </button>
        
    </form>
</div>

</body>
</html>