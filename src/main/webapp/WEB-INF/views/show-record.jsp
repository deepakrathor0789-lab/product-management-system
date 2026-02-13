<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<%@ include file="menu.jsp" %>
<head>
<meta charset="UTF-8">
<title>Product Details</title>

<style>
/* --- Body Setup --- */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #eef2f3, #8e9eab); /* soft gradient */
    min-height: 100vh;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: flex-start;
    padding-top: 120px; /* space for navbar */
}

/* --- Card Container --- */
.card-container {
    width: 520px;
    background: #ffffff; /* clean white card */
    border-radius: 16px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.15);
    padding: 30px 40px;
    margin-bottom: 50px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.card-container:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 40px rgba(0,0,0,0.2);
}

/* --- Card Header --- */
.card-header {
    text-align: center;
    font-size: 28px;
    font-weight: 700;
    color: #34495e;
    margin-bottom: 30px;
    letter-spacing: 1px;
}

/* --- Info Boxes --- */
.info-box {
    display: flex;
    justify-content: space-between;
    padding: 15px 20px;
    border-bottom: 1px solid #e0e0e0;
    transition: background 0.3s ease;
}

.info-box:hover {
    background-color: #f5f5f5;
}

/* --- Labels --- */
.info-box .label {
    font-size: 14px;
    font-weight: 500;
    color: #7f8c8d;
    text-transform: uppercase;
    letter-spacing: 0.5px;
}

/* --- Values --- */
.info-box .value {
    font-size: 18px;
    font-weight: 600;
    color: #2c3e50;
}

/* --- Responsive --- */
@media (max-width: 600px) 
{
    .card-container {
        width: 90%;
        padding: 25px 20px;
    }
    .card-header {
        font-size: 24px;
    }
    .info-box .value {
        font-size: 16px;
    }
}
/* --- Button Container --- */
/* --- Button Container --- */
.button-container {
    text-align: center;
    margin-top: 30px;
}

/* --- Search Again Button --- */
.search-btn {
    padding: 12px 30px;
    font-size: 16px;
    font-weight: 600;
    border: none;
    border-radius: 25px;
    background: #3498db;
    color: white;
    cursor: pointer;
    transition: all 0.3s ease;
}

.search-btn:hover {
    background: #2980b9;
    transform: translateY(-2px);
    box-shadow: 0 8px 18px rgba(0,0,0,0.2);
}

</style>
</head>

<body onload="makeActive('search')">

<div class="card-container">
    <div class="card-header">Product Details</div>

    <div class="info-box">
        <div class="label">Product Id</div>
        <div class="value">${product.pid}</div>
    </div>

    <div class="info-box">
        <div class="label">Product Name</div>
        <div class="value">${product.name}</div>
    </div>

    <div class="info-box">
        <div class="label">Product Brand</div>
        <div class="value">${product.brand}</div>
    </div>

    <div class="info-box">
        <div class="label">Product Price</div>
        <div class="value">₹${product.price}</div>
    </div>
   <div class="button-container">
   
      <a href="searchForm"><button type="submit" class="search-btn">
            Search Again
        </button></a>  
   
</div>


</div>

</body>
</html>
