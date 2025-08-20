<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/NewCss.css">
<meta charset="UTF-8">
<title>Admin Login</title>
</head>
<body style="background: linear-gradient(135deg, #f5f7fa, #c3cfe2)">
	<div class="box">
	
		<div class="topic">Admin Login</div>
		<form action="adminLoginServlet" method="post" >
		  <div class="mb-3">
		    <label for="exampleInputUsername" class="form-label" >Username</label>
		    <input type="text" class="form-control" id="exampleInputUsername" name="username">
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputPassword1" class="form-label" >Password</label>
		    <input type="password" class="form-control" id="exampleInputPassword1" name="password">
		  </div>
	
		  <button type="submit" class="btn btn-primary">Login</button>
		</form>
		
		<c:if test="${not empty popupMessage}">
		    <script>
		        alert("${popupMessage}");
		    </script>
		</c:if>
	</div>
		
</body>
</html>