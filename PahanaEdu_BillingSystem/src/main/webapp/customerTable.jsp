<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<form action="viewCustomersServlet" method="post">
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

<br></br>

<div class="container mt-5 pt-4">

<!-- Search Bar - ADDED -->
<div class="row mb-3">
<div class="col-md-6">
<input type="text" id="searchInput" class="form-control" placeholder="Search by NIC...">
</div>
<div class="col-md-6">
<button id="clearSearch" class="btn btn-secondary" style="display: none;">Clear</button>
</div>
</div>

<div class="card shadow rounded-4 border-0">
<div class="card-body">
<div class="table-responsive">
<table class="table table-hover table-striped align-middle mb-0">
<thead class="table-dark">
<tr>
<th scope="col">ID</th>
<th scope="col">Name</th>
<th scope="col">NIC</th>
<th scope="col">Account Num</th>
<th scope="col">Address</th>
<th scope="col">Contact No</th>
<th scope="col">Email</th>
<th scope="col">Action</th>
</tr>
</thead>
<tbody>
<c:forEach var="cus" items="${customer}">
<tr class="customer-row">
<th>${cus.id}</th>
<th>${cus.name}</th>
<td class="customer-nic">${cus.nic}</td>
<td>${cus.accountNum}</td>
<th>${cus.address}</th>
<th>${cus.contactNo}</th>
<td>${cus.email}</td>
<td>
	<form action="singleData" method="post">
		<input type="hidden" name="id" value="${cus.id}">
		<input type="hidden" name="nic" value="${cus.nic}">
		<button type="submit">Update</button>
	</form>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</div>
</div>
</div>

<!-- JavaScript for Search - ADDED -->
<script>
document.addEventListener('DOMContentLoaded', function() {
    const searchInput = document.getElementById('searchInput');
    const clearButton = document.getElementById('clearSearch');
    const customerRows = document.querySelectorAll('.customer-row');
    
    searchInput.addEventListener('input', function() {
        const searchTerm = this.value.toLowerCase().trim();
        
        if (searchTerm === '') {
            customerRows.forEach(row => {
                row.style.display = '';
            });
            clearButton.style.display = 'none';
        } else {
            customerRows.forEach(row => {
                const customerNic = row.querySelector('.customer-nic').textContent.toLowerCase();
                
                if (customerNic.includes(searchTerm)) {
                    row.style.display = '';
                } else {
                    row.style.display = 'none';
                }
            });
            clearButton.style.display = 'inline-block';
        }
    });
    
    clearButton.addEventListener('click', function() {
        searchInput.value = '';
        searchInput.dispatchEvent(new Event('input'));
    });
});
</script>

</body>
</html>