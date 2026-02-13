<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Update Confirmation</title>
  <style>
    body {
      background: linear-gradient(135deg, #e0f7fa, #ffffff);
      font-family: 'Segoe UI', sans-serif;
    }

    .confirmation-container {
      max-width: 600px;
      margin: 80px auto;
      padding: 40px;
      background: #ffffff;
      border-radius: 16px;
      box-shadow: 0 8px 20px rgba(0,0,0,0.15);
      text-align: center;
      animation: fadeIn 0.8s ease-in-out;
      transition: transform 0.3s ease;
    }

    .confirmation-container:hover {
      transform: translateY(-5px);
    }

    .confirmation-container h2 {
      color: #2e7d32;
      margin-bottom: 10px;
      font-size: 24px;
    }

    .confirmation-container p {
      color: #555;
      font-size: 17px;
    }

    .highlight {
      color: #fb8c00;
      font-size: 20px;
    }

    .btn-group {
      margin-top: 25px;
    }

    .btn {
      padding: 12px 25px;
      font-size: 15px;
      margin: 0 10px;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    .btn-home {
      background: linear-gradient(to right, #4CAF50, #2e7d32);
      color: white;
    }

    .btn-home:hover {
      transform: scale(1.05);
      box-shadow: 0 6px 14px rgba(0,0,0,0.2);
    }

    .btn-back {
      background-color: #e0e0e0;
      color: #333;
    }

    .btn-back:hover {
      transform: scale(1.05);
      background-color: #ccc;
    }

    .checkmark {
      font-size: 50px;
      color: #2e7d32;
      animation: pop 0.6s ease-in-out;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    @keyframes pop {
      0% { transform: scale(0); }
      80% { transform: scale(1.2); }
      100% { transform: scale(1); }
    }
  </style>
</head>
<body onload='makeActive("edit")'>
  <div class="confirmation-container">
    <div class="checkmark">&#x2705;</div>
    <h2>Product Updated Successfully</h2>
    <p>
      Product record with ID 
      <strong class="highlight">${pid}</strong> 
      has been updated in the database.
    </p>

    <div class="btn-group">
     <a href="homeDeashboard"><button class="btn btn-home" onclick="goHome()">Home</button></a> 
      <button class="btn btn-back" onclick="goBack()">Back</button>
    </div>
  </div>

  <script>
    function goHome() {
      document.querySelector('.confirmation-container').style.opacity = "0";
      setTimeout(() => {
        window.location.href = 'index.jsp';
      }, 400);
    }

    function goBack() {
      document.querySelector('.confirmation-container').style.opacity = "0";
      setTimeout(() => {
        history.back();
      }, 400);
    }
  </script>
</body>
</html>
