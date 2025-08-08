<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>My profile</h1>
	
	<c:set var="usr" value="${user}"/>	

			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="name"  placeholder="Name" value="${usr.name}">
			  <label for="floatingInput">Name</label>
			</div>
			
			<div class="form-floating">
			  <input type="text" class="form-control" id="floatingPassword" name="username" placeholder="Username" value="${usr.username}">
			  <label for="floatingPassword">Username</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="age" placeholder="Age" value="${usr.age}">
			  <label for="floatingInput">Age</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="email" class="form-control" id="floatingInput" name="email" placeholder="name@example.com" value="${usr.email}">
			  <label for="floatingInput">Email address</label>
			</div>
			
			<div class="form-floating">
			  <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password" value="${usr.password}">
			  <label for="floatingPassword">Password</label>
			</div>
			
			


	

</body>
</html>