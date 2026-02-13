<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Edit Product</title>
  <link rel="stylesheet" href="CSS/form.css">
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: #f4f7f9;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .edit-card {
      background-color: #ffffff;
      border-radius: 16px;
      padding: 30px 40px;
      box-shadow: 0 8px 20px rgba(0,0,0,0.1);
      width: 400px;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .edit-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 12px 24px rgba(0,0,0,0.2);
    }

    .edit-header {
      font-size: 24px;
      font-weight: 600;
      color: #fb8c00;
      text-align: center;
      margin-bottom: 25px;
    }

    .form-group {
      margin-bottom: 20px;
      position: relative;
    }

    .form-group label {
      display: block;
      font-weight: 500;
      margin-bottom: 6px;
      color: #333;
    }

    .form-group input {
      width: 100%;
      padding: 12px 14px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 16px;
      transition: border-color 0.3s, box-shadow 0.3s;
    }

    .form-group input:focus {
      border-color: #fb8c00;
      box-shadow: 0 0 6px #fb8c00;
      outline: none;
    }

    .form-actions {
      text-align: center;
      margin-top: 10px;
    }

    .form-actions button {
      padding: 12px 25px;
      background: linear-gradient(to right, #f57c00, #fb8c00);
      border: none;
      border-radius: 8px;
      color: white;
      font-size: 16px;
      cursor: pointer;
      transition: transform 0.2s, background 0.3s;
    }

    .form-actions button:hover {
      transform: scale(1.05);
      background: linear-gradient(to right, #fb8c00, #f57c00);
    }

    .msg-box {
      text-align: center;
      color: red;
      font-weight: bold;
      margin-top: 20px;
      min-height: 20px;
    }
  </style>
</head>
<body>
  <div class="edit-card">
    <div class="edit-header">&#9998; Edit Product</div>
    <form action="showUpdateForm" method="get" onsubmit="return validateInput()">
      <div class="form-group">
        <label for="pid">Enter Product ID</label>
        <input type="text" id="pid" name="pid" value="${pid}" placeholder="Product ID" required>
      </div>
      <div class="form-actions">
        <button type="submit">Show Record</button>
        
      </div>
    </form>
    <div class="msg-box" id="msgBox">${msg}</div>
  </div>

  <script>
    function validateInput() {
      const pid = document.getElementById('pid').value.trim();
      const msgBox = document.getElementById('msgBox');
      if(pid === "") {
        msgBox.textContent = "Please enter a Product ID!";
        return false; // prevent form submission
      }
      return true;
    }
  </script>
</body>
</html>
