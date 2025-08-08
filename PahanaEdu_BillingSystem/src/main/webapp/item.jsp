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
		<c:set var="itm" value="${item}"/>	
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="itemid" placeholder="Name" value="${itm.itemid}">
			  <label for="floatingInput">Item Id</label>
			</div>
		
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="title" placeholder="Name" value="${itm.title}">
			  <label for="floatingInput">Title</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="author" placeholder="NIC" value="${itm.author}">
			  <label for="floatingInput">Author</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" name="category" placeholder="NIC" value="${itm.category}">
			  <label for="floatingInput">Category</label>
			</div>
			
			<div class="form-floating mb-3">
			  <input type="number" class="form-control" id="floatingInput" name="price" placeholder="Address" value="${itm.price}">
			  <label for="floatingInput">Price</label>
			</div>
			
			<div class="form-floating">
			  <input type="number" class="form-control mb-3" id="floatingPassword" name="quantity" placeholder="ContactNo" value="${itm.quantity}">
			  <label for="floatingInput">Quantity</label>
			</div>
			
			<button type="submit" class="btn btn-primary">Update Item</button>
	
	
</body>
</html>