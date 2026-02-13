<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    height: 100vh;
    background: linear-gradient(120deg, #667eea, #764ba2);
    display: flex;
    justify-content: center;
    align-items: center;
}

.login-container {
    width: 360px;
    padding: 40px;
    border-radius: 20px;
    background: rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(15px);
    border: 1px solid rgba(255,255,255,0.2);
    box-shadow: 0 8px 32px rgba(0,0,0,0.2);
    color: white;
}

.login-container h2 {
    text-align: center;
    margin-bottom: 30px;
    font-weight: 500;
    letter-spacing: 1px;
}

.input-group {
    margin-bottom: 20px;
}

.input-group input {
    width: 100%;
    padding: 12px 15px;
    border-radius: 30px;
    border: none;
    outline: none;
    font-size: 14px;
}

.input-group input:focus {
    box-shadow: 0 0 10px rgba(255,255,255,0.6);
}

.btn {
    width: 100%;
    padding: 12px;
    border-radius: 30px;
    border: none;
    background: white;
    color: #764ba2;
    font-weight: 600;
    cursor: pointer;
    transition: 0.3s;
}

.btn:hover {
    background: #f1f1f1;
    transform: scale(1.05);
}

.reset-btn {
    margin-top: 10px;
    background: transparent;
    color: white;
    border: 1px solid white;
}

.reset-btn:hover {
    background: rgba(255,255,255,0.2);
}

.message {
    text-align: center;
    margin-top: 15px;
    color: #ffdddd;
}
</style>
</head>

<body>

<div class="login-container">
    <h2>Welcome Back</h2>

    <form action="authenticate-user" method="post">

        <div class="input-group">
            <input type="text" name="user" value="${username}" placeholder="Username" required>
        </div>

        <div class="input-group">
            <input type="password" name="pass" placeholder="Password" required>
        </div>

        <button type="submit" class="btn">Login</button>
        <button type="reset" class="btn reset-btn">Reset</button>

    </form>

    <div class="message">
        ${msg}
    </div>
</div>

</body>
</html>
