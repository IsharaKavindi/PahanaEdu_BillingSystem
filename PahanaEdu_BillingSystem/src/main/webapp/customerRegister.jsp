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
	
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top w-100">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="#">PananaEdu</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent"
	      aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	  
	    <div class="collapse navbar-collapse" id="navbarContent">
	      <ul class="navbar-nav ms-auto">
	        <li class="nav-item">
	          <a class="nav-link active" href="#">Calculate Bill</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">Manage Customers</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">Manage Items</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">Help</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">Logout</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>


	<div class="box">
	
		<form id="customerForm" method="post" action="addCustomerServlet">
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="name" placeholder="Name">
			  <label for="floatingInput">Name</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="nic" placeholder="NIC">
			  <label for="floatingInput">NIC</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="accountnum" placeholder="NIC">
			  <label for="floatingInput">Account Number</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="address" placeholder="Address">
			  <label for="floatingInput">Address</label>
			</div>
			
			<div class="form-floating">
			  <input type="text" class="form-control mb-3" id="floatingPassword" name="contactno" placeholder="ContactNo">
			  <label for="floatingInput">Contact NO</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="email" class="form-control" id="floatingInput" name="email" placeholder="name@example.com">
			  <label for="floatingInput">Email</label>
			</div>
			
			<button type="submit" class="btn btn-primary">Add Customer</button>
	
		</form>
	</div>
	
	
	<script>
	  document.getElementById("customerForm").addEventListener("submit", function(event) {
	    const form = document.forms["customerForm"];
	
	    const name = form["name"].value.trim();
	    const nic = form["nic"].value.trim();
	    const accountnum = form["accountnum"].value.trim();
	    const address = form["address"].value.trim();
	    const contactno = form["contactno"].value.trim();
	    const email = form["email"].value.trim();
	
	    // Regex patterns
	    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	    const phonePattern = /^\d{10}$/;
	    const nicPattern = /^(\d{9}[VXvx]|\d{12})$/;
	
	    // Basic empty check
	    if (!name || !nic || !accountnum || !address || !contactno || !email) {
	      alert("Please fill in all fields.");
	      event.preventDefault();
	      return;
	    }
	
	    // Email format check
	    if (!emailPattern.test(email)) {
	      alert("Please enter a valid email address.");
	      event.preventDefault();
	      return;
	    }
	
	    // Contact number check
	    if (!phonePattern.test(contactno)) {
	      alert("Please enter a valid 10-digit contact number.");
	      event.preventDefault();
	      return;
	    }
	
	    // NIC validation
	    if (!nicPattern.test(nic)) {
	      alert("Please enter a valid NIC number (old: 123456789V or new: 200012345678).");
	      event.preventDefault();
	      return;
	    }
	
	  });
	</script>

	
</body>
</html>