<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/NewCss.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="box">
		<form method="post" action="addUserServlet">
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="name" placeholder="Name">
			  <label for="floatingInput">Name</label>
			</div>
			
			<div class="form-floating">
			  <input type="text" class="form-control" id="floatingPassword" name="username" placeholder="Username">
			  <label for="floatingPassword">Username</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="age" placeholder="Age">
			  <label for="floatingInput">Age</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="email" class="form-control" id="floatingInput" name="email" placeholder="name@example.com">
			  <label for="floatingInput">Email address</label>
			</div>
			
			<div class="form-floating">
			  <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password">
			  <label for="floatingPassword">Password</label>
			</div>
			
			<button type="submit" class="btn btn-primary">Submit</button>
	
		</form>
	</div>


	<script>
	  	document.querySelector("form").addEventListener("submit", function(event) {
		    const name = document.querySelector("input[name='name']").value.trim();
		    const username = document.querySelector("input[name='username']").value.trim();
		    const age = document.querySelector("input[name='age']").value.trim();
		    const email = document.querySelector("input[name='email']").value.trim();
		    const password = document.querySelector("input[name='password']").value.trim();
		
		    // Simple email pattern
		    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
		
		    // Check for empty fields
		    if (!name || !username || !age || !email || !password) {
		      alert("Please fill in all fields.");
		      event.preventDefault(); // prevent form from submitting
		      return;
		    }
		
		    // Email format validation
		    if (!emailPattern.test(email)) {
		      alert("Please enter a valid email address.");
		      event.preventDefault(); // prevent form from submitting
		      return;
		    }
		
		    if (isNaN(age) || age <= 0) {
		      alert("Please enter a valid numeric age.");
		      event.preventDefault();
		      return;
		    }
	  	});
	</script>
	
</body>
</html>