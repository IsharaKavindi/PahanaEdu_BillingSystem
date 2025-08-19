<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/NewCss.css">
<style>
body {
	
    background: linear-gradient(to right, #343a40, #495057);
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    min-height: 100vh;
    margin: 0;
    padding: 0;
    display: flex;
    align-items: center;
    justify-content: center;
}

.box2 {
    background: rgba(26, 32, 44, 0.9);
    backdrop-filter: blur(10px);
    border-radius: 16px;
    padding: 40px;
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
    border: 1px solid rgba(255, 255, 255, 0.1);
    max-width: 450px;
    width: 100%;
    margin: 20px;
    text-align: left;
}

.topic1 {
    color: #ffffff;
    font-weight: 600;
    margin: 0;
    line-height: 1.2;
}

.topic1:first-child {
    font-size: 32px;
    margin-bottom: 8px;
}

.topic1:nth-child(2) {
    font-size: 24px;
    color: #a0aec0;
    font-weight: 400;
    margin-bottom: 30px;
}

.button-group {
    display: flex;
    flex-direction: column;
    gap: 12px;
}


.btn.btn-primary {
    background: #fbbf24;
    border: none;
    color: black;
    font-size: 16px;
    font-weight: 500;
    padding: 8px 20px;
    border-radius: 8px;
    transition: all 0.2s ease;
    cursor: pointer;
    text-decoration: none;
    display: block;
    text-align: center;
    width: 100%;
}

.btn.btn-primary:hover {
    background: #059669;
    transform: translateY(-1px);
    box-shadow: 0 4px 12px rgba(16, 185, 129, 0.3);
}

.btn.btn-primary:active {
    transform: translateY(0);
}

/* Responsive design */
@media (max-width: 768px) {
    .box2 {
        padding: 30px 25px;
        margin: 15px;
    }
    
    .topic1:first-child {
        font-size: 28px;
    }
    
    .topic1:nth-child(2) {
        font-size: 20px;
    }
}

@media (max-width: 480px) {
    .box2 {
        padding: 25px 20px;
        margin: 10px;
    }
    
    .topic1:first-child {
        font-size: 24px;
    }
    
    .topic1:nth-child(2) {
        font-size: 18px;
    }
    
    .btn.btn-primary {
        font-size: 15px;
        padding: 10px 20px;
    }
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="box2">
    <h2 class="topic1">Welcome to</h2>
    <h2 class="topic1">Pahana Edu Billing System</h2>

    
    <div class="button-group">
        <a href="userLogin.jsp">
            <button type="button" class="btn btn-primary">User Login</button>
        </a>

        <a href="adminLogin.jsp">
            <button type="button" class="btn btn-primary">Admin Login</button>
        </a>
    </div>
</div>

</body>
</html>