<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Edit Product</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #f4f6f9;
	margin: 0;
	padding-top: 120px; /* navbar space */
}

/* Card Container */
.edit-container {
	width: 500px;
	margin: auto;
	background: #ffffff;
	border-radius: 8px;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
	overflow: hidden;
}

/* Header */
.edit-header {
	background-color: #1976d2;
	color: white;
	padding: 15px;
	font-size: 20px;
	text-align: center;
	font-weight: bold;
}

/* Form Body */
.form-body {
	padding: 25px 30px;
}

.form-group {
	margin-bottom: 18px;
}

.form-group label {
	display: block;
	margin-bottom: 6px;
	font-weight: 600;
	color: #444;
}

.form-group input {
	width: 100%;
	padding: 10px;
	border-radius: 4px;
	border: 1px solid #ccc;
	font-size: 14px;
	outline: none;
}

.form-group input:focus {
	border-color: #1976d2;
}

/* Buttons */
.button-area {
	text-align: right;
	margin-top: 20px;
}

.btn {
	padding: 8px 16px;
	font-size: 14px;
	border-radius: 4px;
	border: none;
	cursor: pointer;
	transition: 0.3s;
}

.btn-update {
	background-color: #1976d2;
	color: white;
}

.btn-update:hover {
	background-color: #125ea7;
}

.btn-cancel {
	background-color: #e0e0e0;
	margin-right: 8px;
}

.btn-cancel:hover {
	background-color: #c6c6c6;
}
</style>

</head>
<body onload='makeActive("edit")'>

<%@ include file="menu.jsp" %>

<form action="updateRecord" method="post">
<div class="edit-container">

    <div class="edit-header">
        Update Product
    </div>

    <div class="form-body">

        <div class="form-group">
            <label>Product ID</label>
            <input type="text" name="pid" value="${product.pid}" readonly>
        </div>

        <div class="form-group">
            <label>Product Name</label>
            <input type="text" name="name" value="${product.name}" required>
        </div>

        <div class="form-group">
            <label>Product Brand</label>
            <input type="text" name="brand" value="${product.brand}" required>
        </div>

        <div class="form-group">
            <label>Product Price</label>
            <input type="text" name="price" value="${product.price}" required>
        </div>

        <div class="button-area">
            <button type="button" class="btn btn-cancel"
                onclick="window.location.href='editProductForm.jsp'">
                Cancel
            </button>

            <button type="submit" class="btn btn-update">
                Update
            </button>
        </div>

    </div>

</div>
</form>

</body>

</html>
