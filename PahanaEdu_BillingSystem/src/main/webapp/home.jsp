<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/NewCss.css">
<style>
	
	 body {
      background-image: url("../Images/image1.jpg"); /* Replace with your image path */
      background-size: cover;                 /* Cover entire screen */
      background-position: center;            /* Center the image */
      background-repeat: no-repeat;
      font-family: Arial, sans-serif; 
    }
    
	.btn btn-primary{
		padding:60px;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="box2">
	<h2 class="topic1">Welcome to</h2><br></br>
	<h2 class="topic1">Pahana Edu Billing System</h2><br></br>
	<br></br><br>
		<div class="button-group">
			<a href="userLogin.jsp">
				<button type="button" class="btn btn-primary">User Login</button>
			</a>
		
			<a href="userLogin.jsp">
				<button type="button" class="btn btn-primary">User Login</button>
			</a>
		</div>
	</div>
	
	<form action="viewUsersServlet" method="post">
		<button type="submit">View users</button>
	</form>
	
	<form action="viewCustomersServlet" method="post">
		<button type="submit">View customers</button>
	</form>
	
	<form action="viewItemServlet" method="post">
		<button type="submit">View items</button>
	</form>
	
		<form action="viewBillingServlet" method="post">
		<button type="submit">Calculate Bill</button>
	</form>
	

		
</body>
</html>