<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
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
		<form action="updateCustomerServlet" method="post">
		<c:set var="cus" value="${customer}"/>	
			<div class="form-floating mb-3">
			  <input type="number" class="form-control" id="floatingInput" name="id" placeholder="Name" value="${cus.id}">
			  <label for="floatingInput">Name</label>
			</div> 
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="name" placeholder="Name" value="${cus.name}">
			  <label for="floatingInput">Name</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="nic" placeholder="NIC" value="${cus.nic}">
			  <label for="floatingInput">NIC</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="accountnum" placeholder="NIC" value="${cus.accountNum}">
			  <label for="floatingInput">Account Number</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="address" placeholder="Address" value="${cus.address}">
			  <label for="floatingInput">Address</label>
			</div>
			
			<div class="form-floating">
			  <input type="text" class="form-control mb-3" id="floatingPassword" name="contactno" placeholder="ContactNo" value="${cus.contactNo}">
			  <label for="floatingInput">Contact NO</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="email" class="form-control" id="floatingInput" name="email" placeholder="name@example.com" value="${cus.email}">
			  <label for="floatingInput">Email</label>
			</div>
			
			
			<button type="submit" class="btn btn-primary">Update Customer</button>
		</form>
		<c:if test="${not empty popupMessage}">
		    <script>
		        alert("${popupMessage}");
		    </script>
		</c:if>
		
	</div>
	
</body>
</html>