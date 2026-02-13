<%@ include file="menu.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Confirm Delete</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #f4f6f9;
	margin: 0;
	padding-top: 120px; /* space for navbar */
}

/* Main Card */
.confirm-container {
	width: 520px;
	margin: auto;
	background: #ffffff;
	border-radius: 8px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	overflow: hidden;
}

/* Header */
.confirm-title {
	background-color: #c62828;
	color: #fff;
	padding: 14px;
	font-size: 20px;
	text-align: center;
	font-weight: bold;
}

/* Product Details */
.details {
	padding: 25px 30px;
}

.detail-row {
	display: flex;
	justify-content: space-between;
	padding: 10px 0;
	border-bottom: 1px solid #eee;
}

.detail-row:last-child {
	border-bottom: none;
}

.label {
	font-weight: 600;
	color: #555;
}

.value {
	color: #333;
}

/* Warning Message */
.warning {
	background-color: #fff3f3;
	color: #c62828;
	padding: 12px 30px;
	font-size: 14px;
}

/* Buttons */
.button-area {
	padding: 20px 30px;
	text-align: right;
}

.btn {
	padding: 10px 20px;
	border-radius: 4px;
	border: none;
	font-size: 14px;
	cursor: pointer;
	transition: 0.3s ease;
}

.btn-confirm {
	background-color: #c62828;
	color: white;
}

.btn-confirm:hover {
	background-color: #a31515;
}

.btn-cancel {
	background-color: #e0e0e0;
	margin-right: 10px;
}

.btn-cancel:hover {
	background-color: #c2c2c2;
}
</style>

</head>
<body onload='makeActive("delete")'>

	<form action="deleteRecord" method="get">
		<div class="confirm-container">

			<div class="confirm-title">Confirm Product Deletion</div>

			<div class="details">
				<div class="detail-row">
					<span class="label">Product ID</span> <span class="value">${product.pid}</span>
					<input type="hidden" name="pid" value="${product.pid}">
				</div>

				<div class="detail-row">
					<span class="label">Product Name</span> <span class="value">${product.name}</span>
				</div>

				<div class="detail-row">
					<span class="label">Brand</span> <span class="value">${product.brand}</span>
				</div>

				<div class="detail-row">
					<span class="label">Price</span> <span class="value">&#8377;
						${product.price}</span>
				</div>
			</div>

			

			<div class="button-area">
				<button type="button" class="btn btn-cancel"
					onclick="history.back()">Cancel</button>
				<button type="submit" class="btn btn-confirm">Delete</button>
			</div>

		</div>
	</form>

</body>

</html>
