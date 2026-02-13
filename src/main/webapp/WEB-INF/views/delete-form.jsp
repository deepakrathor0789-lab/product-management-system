<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><%@ include file="menu.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Delete Product</title>

<style>
/* --- Body --- */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #f2f2f2, #cfd8dc); /* subtle gradient */
    min-height: 100vh;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: flex-start;
    padding-top: 120px; /* space for navbar */
}

/* --- Delete Form Container --- */
.delete-form {
    width: 450px;
    background: #ffffff;
    border-radius: 12px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.15);
    overflow: hidden;
    animation: fadeIn 0.6s ease;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.delete-form:hover {
    transform: translateY(-5px);
    box-shadow: 0 12px 35px rgba(0,0,0,0.25);
}

/* --- Header --- */
.form-header {
    background: linear-gradient(to right, #d32f2f, #e53935);
    color: white;
    font-size: 22px;
    text-align: center;
    padding: 14px;
    font-weight: 600;
    letter-spacing: 1px;
}

/* --- Form Body --- */
.form-body {
    padding: 30px 25px;
}

/* --- Form Group --- */
.form-group {
    position: relative;
    margin-bottom: 25px;
}

.form-group label {
    position: absolute;
    top: 12px;
    left: 12px;
    color: #888;
    font-weight: 500;
    pointer-events: none;
    transition: 0.3s ease;
}

.form-group input {
    width: 100%;
    padding: 14px 12px;
    border-radius: 8px;
    border: 1px solid #ccc;
    font-size: 16px;
    outline: none;
    transition: 0.3s;
}

.form-group input:focus {
    border-color: #e53935;
    box-shadow: 0 0 6px #f44336;
}

.form-group input:focus + label,
.form-group input:not(:placeholder-shown) + label {
    top: -10px;
    font-size: 12px;
    color: #e53935;
}

/* --- Button --- */
.form-actions {
    text-align: center;
}

.form-actions button {
    width: 100%;
    padding: 14px;
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    background: linear-gradient(45deg, #e53935, #d32f2f);
    border: none;
    border-radius: 25px;
    cursor: pointer;
    transition: all 0.3s ease;
}

.form-actions button:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 20px rgba(229, 57, 53, 0.5);
}

/* --- Message --- */
.message {
    margin-top: 20px;
    text-align: center;
    color: #d32f2f;
    font-weight: 600;
    font-size: 15px;
    animation: fadeIn 0.5s ease;
}

/* --- Animation --- */
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(20px);}
    to { opacity: 1; transform: translateY(0);}
}
</style>

<script>
function validateForm(){
    let pid = document.getElementById("pid").value.trim();
    if(pid === ""){
        alert("Please enter Product ID");
        return false;
    }

    // Button loading effect
    let btn = document.getElementById("deleteBtn");
    btn.innerText = "Deleting...";
    btn.disabled = true;
    return true;
}
</script>
<script>
window.addEventListener("pageshow", function(event) {
    if (event.persisted || window.performance.getEntriesByType("navigation")[0].type === "back_forward") {
        let btn = document.getElementById("deleteBtn");
        if (btn) {
            btn.disabled = false;
            btn.innerText = "Delete Record";
        }
    }
});
</script>

</head>

<body onload='makeActive("delete")'>
  <div class="delete-form">
    <div class="form-header">
      🗑️ Delete Product
    </div>
    <form action="confirmDelete" method="get" onsubmit="return validateForm()">
      <div class="form-body">
        <div class="form-group">
          <input type="text" id="pid" name="pid" value="${pid}" placeholder=" " required>
          <label for="pid">Enter Product ID</label>
        </div>
        <div class="form-actions">
          <button type="submit" id="deleteBtn">Delete Record</button>
        </div>
      </div>
    </form>
  </div>

  <c:if test="${not empty msg}">
      <div class="message">${msg}</div>
  </c:if>
</body>
</html>
