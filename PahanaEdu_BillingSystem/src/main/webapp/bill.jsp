<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/NewCss.css">
<meta charset="UTF-8">
<title>Item List</title>
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
	        	<form action="viewItemServlet" method="post">
	              <a class="nav-link" href="#"><button type="submit">View users</button></a>
	            </form>
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
	
	<div class="container mt-4">
  <div class="card shadow rounded-4 border-0">
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-hover table-striped align-middle mb-0">
          <thead class="table-dark">
            <tr>
              <th scope="col">Item ID</th>
              <th scope="col">Title</th>
              <th scope="col">Price</th>
              <th scope="col">Add to Cart</th>
            </tr>
          </thead>
          <tbody>
            <c:choose>
              <c:when test="${not empty item}">
                <c:forEach var="itm" items="${item}">
                  <tr>
                    <td>${itm.itemid}</td>
                    <td>${itm.title}</td>
                    <td>${itm.price}</td>
                    <td>
                      <form action="addToCartServlet" method="post">
                        <input type="hidden" name="itemid" value="${itm.itemid}" />
                        <input type="hidden" name="title" value="${itm.title}" />
                        <input type="hidden" name="price" value="${itm.price}" />
                        <input type="number" name="quantity" value="1" min="1" class="form-control d-inline-block w-25 me-2" />
                        <button type="submit" class="btn btn-primary btn-sm">Add</button>
                      </form>
                    </td>
                  </tr>
                </c:forEach>
              </c:when>
              <c:otherwise>
                <tr>
                  <td colspan="4" class="text-center text-danger">No items found in the database.</td>
                </tr>
              </c:otherwise>
            </c:choose>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>


<%
	@SuppressWarnings("unchecked")
    java.util.List<model.item> cart = (java.util.List<model.item>) session.getAttribute("cart");
    int grandTotal = 0;
    if (cart != null) {
        for (model.item itm : cart) {
            grandTotal += itm.getPrice() * itm.getQuantity();
        }
        request.setAttribute("cart", cart);
        request.setAttribute("grandTotal", grandTotal);
    }
%>

<c:if test="${not empty cart}">
    <div class="mt-5">
        <h3>Billing Items</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Item ID</th>
                    <th>Title</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Subtotal</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="itm" items="${cart}">
                    <tr>
                        <td>${itm.itemid}</td>
                        <td>${itm.title}</td>
                        <td>${itm.price}</td>
                        <td>${itm.quantity}</td>
                        <td>${itm.price * itm.quantity}</td>
                    </tr>
                </c:forEach>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="4" style="text-align:right;"><b>Total:</b></td>
                    <td><b>${grandTotal}</b></td>
                </tr>
            </tfoot>
        </table>
    </div>
</c:if>

	
</body>
</html>
