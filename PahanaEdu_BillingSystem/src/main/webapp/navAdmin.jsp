<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top w-100">
<div class="container-fluid">
<a class="navbar-brand" href="adminDash.jsp">PananaEdu</a>
<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent"
aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="navbarContent">
<ul class="navbar-nav ms-auto">
<li class="nav-item">
		<form action="viewUsersServlet" method="post">
<a class="nav-link" href="#"><button type="submit" style="background-color: #212529; color: white; border: none;">Manage Cashiers</button></a>
	</form>
</li>
<li class="nav-item">
	<form action="manageBillsServlet" method="post">
<a class="nav-link" href="#"><button type="submit" style="background-color: #212529; color: white; border: none;">Manage Bills</button></a>
	</form>
</li>
<li class="nav-item">
<a class="nav-link" href="userDash.jsp" style="background-color: #212529; color: white; border: none;">Cashier Dashboard</a>
</li>
<li class="nav-item">
<a  class="nav-link" href="home.jsp"><button type="submit" style="background-color: #212529; color: white; border: none;">Logout</button></a>
</li>
</ul>
</div>
</div>
</nav>
