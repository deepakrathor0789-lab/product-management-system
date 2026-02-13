<%@ include file="menu.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Product Management System | Home</title>
<link rel="stylesheet" href="CSS/product.css">

<style>
body {
  font-family: 'Poppins', sans-serif;
  background: linear-gradient(135deg, #134E5E, #71B280);
  min-height: 100vh;
  margin: 0;
  display: flex;
  justify-content: center;
  align-items: center;
}


/* Welcome card like login interface */
.welcome-card {
	background: rgba(255, 255, 255, 0.1);
	backdrop-filter: blur(12px);
	padding: 60px 50px;
	border-radius: 20px;
	box-shadow: 0 10px 35px rgba(0, 0, 0, 0.25);
	text-align: center;
	max-width: 600px;
	width: 90%;
	animation: fadeIn 0.8s ease;
}

.welcome-card h1 {
	font-size: 32px;
	color: white;
	font-weight: 600;
	margin-bottom: 20px;
}

.welcome-card p {
	font-size: 18px;
	color: rgba(255, 255, 255, 0.85);
	line-height: 1.5;
}

@
keyframes fadeIn {from { opacity:0;
	transform: translateY(20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}

/* Responsive */
@media ( max-width : 768px) {
	.welcome-card {
		padding: 40px 30px;
	}
	.welcome-card h1 {
		font-size: 26px;
	}
	.welcome-card p {
		font-size: 16px;
	}
}
</style>
</head>

<body onload="makeActive('home')">

	<div class="welcome-card">
		<h1>👋 Welcome to the Product Management System</h1>
		<p>Manage, search, update, and delete product records with ease.
			Navigate through the menu above to access all features.</p>
	</div>

</body>
</html>
