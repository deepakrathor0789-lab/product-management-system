<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<%@ include file="menu.jsp" %>
<head>
<meta charset="UTF-8">
<title>Search Product</title>

<style>
/* Body setup */
body {
    padding-top: 80px; /* space for navbar */
    margin: 0;
    font-family: 'Poppins', sans-serif;
    background: #e0eafc; /* soft light background */
    background: linear-gradient(to right, #cfdef3, #e0eafc);
    display: flex;
    justify-content: center;
    align-items: flex-start;
    min-height: 100vh;
}

/* Card container */
.search-box {
    width: 400px;
    padding: 40px 35px;
    background: #ffffff;
    border-radius: 12px;
    box-shadow: 0 6px 20px rgba(0,0,0,0.1);
    animation: fadeIn 0.6s ease;
}

/* Title */
.search-box h2 {
    text-align: center;
    color: #2c3e50;
    margin-bottom: 30px;
    font-size: 24px;
    letter-spacing: 1px;
}

/* Input group with floating label */
.input-group {
    position: relative;
    margin-bottom: 25px;
}

.input-group input {
    width: 100%;
    padding: 14px 12px 14px 12px;
    border-radius: 6px;
    border: 1px solid #ccc;
    outline: none;
    font-size: 16px;
    transition: 0.3s;
    background: #f9f9f9;
}

.input-group input:focus {
    border-color: #3498db;
    box-shadow: 0 0 5px #3498db;
}

.input-group label {
    position: absolute;
    top: 14px;
    left: 12px;
    color: #7f8c8d;
    pointer-events: none;
    transition: 0.3s;
}

.input-group input:focus ~ label,
.input-group input:not(:placeholder-shown) ~ label {
    top: -8px;
    font-size: 12px;
    color: #3498db;
}

/* Button */
button {
    width: 100%;
    padding: 12px;
    border: none;
    border-radius: 25px;
    background: #3498db;
    color: white;
    font-weight: bold;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
}

button:hover {
    background: #2980b9;
    box-shadow: 0 6px 15px rgba(41, 128, 185, 0.4);
    transform: translateY(-2px);
}

/* Message */
.message {
    margin-top: 20px;
    text-align: center;
    color: #e74c3c;
    font-weight: 600;
}

/* Fade-in animation */
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

/* Responsive */
@media(max-width: 450px){
    .search-box {
        width: 90%;
        padding: 30px 20px;
    }
}
</style>

<script>
function validateForm(){
    let pid = document.getElementById("pid").value.trim();
    if(pid === ""){
        alert("Please enter Product ID");
        return false;
    }
    return true;
}
</script>

</head>
<body onload="makeActive('search')">

<div class="search-box">
    <h2>Search Product</h2>

    <form action="searchRecord" method="get" onsubmit="return validateForm()">
        <div class="input-group">
            <input type="text" id="pid" name="pid" placeholder=" " value="${pid}" required>
            <label for="pid">Enter Product ID</label>
        </div>

        <button type="submit">Search Now</button>
    </form>

    <c:if test="${not empty msg}">
        <div class="message">
            ${msg}
        </div>
    </c:if>
</div>

</body>
</html>
