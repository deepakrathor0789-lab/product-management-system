<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Product Management System | Product Insert</title>

<style>
body {
    margin: 0;
    padding-top: 80px; /* navbar ke liye space */
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(135deg, #1e3c72, #2a5298);
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

/* Glass Card */
.success-container {
    width: 480px;
    background: rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(12px);
    border-radius: 20px;
    padding: 40px;
    text-align: center;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
    animation: fadeIn 0.8s ease-in-out;
    color: white;
}

/* Success Icon */
.success-icon {
    font-size: 60px;
    margin-bottom: 15px;
    animation: pop 0.6s ease;
}

/* Message */
.success-message {
    font-size: 22px;
    margin-bottom: 25px;
}

/* Button */
.btn {
    padding: 12px 25px;
    font-size: 16px;
    background: #00c853;
    color: white;
    border: none;
    border-radius: 30px;
    cursor: pointer;
    text-decoration: none;
    transition: all 0.3s ease;
}

.btn:hover {
    background: #00e676;
    transform: translateY(-3px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.3);
}

/* Animations */
@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

@keyframes pop {
    0% { transform: scale(0); }
    70% { transform: scale(1.2); }
    100% { transform: scale(1); }
}
</style>

</head>

<body onload="makeActive('insert')">

<div class="success-container">
    <div class="success-icon">✅</div>
    <h2 class="success-message">
        Product record has been inserted successfully!
    </h2>

    <a href="productList" class="btn">
        View Product List
    </a>
</div>

</body>
</html>
