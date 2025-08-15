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
		<h3 class="topic">Add Item</h3>
		<form name="itemForm" method="post" action="addItemServlet" onsubmit="return validateForm()">
			
			<div class="form-floating">
			  <input type="text" class="form-control" id="floatingInput" name="itemid" placeholder="ItemID">
			  <label for="floatingInput">Item ID</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="title" placeholder="Title">
			  <label for="floatingInput">Title</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="author" placeholder="Author">
			  <label for="floatingInput">Author</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="category" placeholder="Category">
			  <label for="floatingInput">Category</label>
			</div>
			
			<div class="form-floating">
			  <input type="text" class="form-control" id="floatingPassword" name="price" placeholder="Price">
			  <label for="floatingInput">Price</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="quantity" placeholder="Quantity">
			  <label for="floatingInput">Quantity</label>
			</div>
			
			<button type="submit" class="btn btn-primary">Add Item</button>
	
		</form>
	</div>
		<script>
			function validateForm() {
			    const itemid = document.forms["itemForm"]["itemid"].value.trim();
			    const title = document.forms["itemForm"]["title"].value.trim();
			    const author = document.forms["itemForm"]["author"].value.trim();
			    const category = document.forms["itemForm"]["category"].value.trim();
			    const price = document.forms["itemForm"]["price"].value.trim();
			    const quantity = document.forms["itemForm"]["quantity"].value.trim();
			
			    if (!itemid || !title || !author || !category || !price || !quantity) {
			        alert("All fields are required!");
			        return false;
			    }
			
			    if (isNaN(price) || Number(price) <= 0) {
			        alert("Please enter a valid numeric price greater than 0.");
			        return false;
			    }
			
			    if (!Number.isInteger(Number(quantity)) || Number(quantity) < 0) {
			        alert("Quantity must be a non-negative integer.");
			        return false;
			    }
			
			    return true;
			}
		</script>
</body>
</html>