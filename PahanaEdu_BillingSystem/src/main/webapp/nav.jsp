<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top w-100">
<div class="container-fluid">
<a class="navbar-brand" href="userDash.jsp">PananaEdu</a>
<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent"
aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="navbarContent">
<ul class="navbar-nav ms-auto">
<li class="nav-item">
	<form action="viewBillingServlet" method="post">
		<a class="nav-link" href="#"><button type="submit" style="background-color: #212529; color: white; border: none;">Calculate Bill</button></a>
	</form>
</li>
<li class="nav-item">
	<form action="viewCustomersServlet" method="post">
<a class="nav-link" href="#"><button type="submit" style="background-color: #212529; color: white; border: none;">Manage Customers</button></a>
	</form>
</li>
<li class="nav-item">
	<form action="viewItemServlet" method="post">
<a class="nav-link" href="#"><button type="submit" style="background-color: #212529; color: white; border: none;">Manage Items</button></a>
	</form>
</li>
<li class="nav-item">
<form action="viewBillHistory" method="post">
<a class="nav-link" href="#"><button type="submit" style="background-color: #212529; color: white; border: none;">View Bills</button></a>
</form>
</li>
<li class="nav-item">
<a class="nav-link" href="help.jsp"><button type="submit" style="background-color: #212529; color: white; border: none;">Help</button></a>
</li>
<li class="nav-item">
<a  class="nav-link" href="home.jsp"><button type="submit" style="background-color: #212529; color: white; border: none;">Logout</button></a>
</li>
</ul>
</div>
</div>
</nav>
