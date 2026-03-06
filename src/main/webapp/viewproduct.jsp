<%@ page import="java.util.*,com.project.dto.ProductDTO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Products</title>

<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
    background-color:#f8f9fa;
}
.table-container{
    margin-top:40px;
}
.table thead{
    background-color:#343a40;
    color:white;
}
.btn-sm{
    margin:2px;
}
</style>

</head>
<body>

<div class="container table-container">

    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="text-primary">📦 Product Management</h2>
        <a href="addProduct.jsp" class="btn btn-success">+ Add Product</a>
    </div>

    <div class="card shadow-lg p-3">
        <table class="table table-bordered table-hover text-center align-middle">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Image</th>
                    <th>Name</th>
                    <th>Price (RS)</th>
                    <th>Description</th>
                    <th>Actions</th>
                </tr>
            </thead>

            <tbody>
            <%
            List<ProductDTO> list = (List<ProductDTO>) request.getAttribute("list");

            if(list != null && !list.isEmpty()){
                for(ProductDTO p : list){
            %>
                <tr>
                    <td><%=p.getId()%></td>

                    <td>
                        <img src="images/<%=p.getImage()%>" width="60" height="60" class="rounded">
                    </td>

                    <td><strong><%=p.getName()%></strong></td>

                    <td class="text-success fw-bold">
                        Rs <%=p.getPrice()%>
                    </td>

                    <td><%=p.getDescription()%></td>

                    <td>
                        <a href="editProduct?id=<%=p.getId()%>" 
                           class="btn btn-warning btn-sm">Edit</a>

                        <a href="deleteProduct?id=<%=p.getId()%>" 
                           class="btn btn-danger btn-sm"
                           onclick="return confirm('Are you sure you want to delete this product?');">
                           Delete
                        </a>
                    </td>
                </tr>
            <%
                }
            } else {
            %>
                <tr>
                    <td colspan="6" class="text-danger">No Products Available</td>
                </tr>
            <%
            }
            %>
            </tbody>
        </table>
    </div>

    <div class="mt-3">
        <a href="adminDashboard.jsp" class="btn btn-secondary">⬅ Back to Dashboard</a>
    </div>

</div>

</body>
</html>