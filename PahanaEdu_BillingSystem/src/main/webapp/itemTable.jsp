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
<form action="viewBillingServlet" method="post">
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

<!-- Search Bar - ADDED -->
<div class="row mb-3">
<div class="col-md-6">
<input type="text" id="searchInput" class="form-control" placeholder="Search by Item ID or Title...">
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
<th scope="col">Item ID</th>
<th scope="col">Title</th>
<th scope="col">Author</th>
<th scope="col">Categoty</th>
<th scope="col">Price</th>
<th scope="col">Quantity</th>
</tr>
</thead>
<tbody id="itemTableBody">
<c:forEach var="itm" items="${item}">
<tr class="item-row">
<th class="item-id">${itm.itemid}</th>
<th class="item-title">${itm.title}</th>
<td>${itm.author}</td>
<td>${itm.category}</td>
<th>${itm.price}</th>
<th>${itm.quantity}</th>
<td>
	<form action="singleItemData" method="post">
		<input type="hidden" name="itemid" value="${itm.itemid}">
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
    const itemRows = document.querySelectorAll('.item-row');
    
    searchInput.addEventListener('input', function() {
        const searchTerm = this.value.toLowerCase().trim();
        
        if (searchTerm === '') {
            itemRows.forEach(row => {
                row.style.display = '';
            });
            clearButton.style.display = 'none';
        } else {
            itemRows.forEach(row => {
                const itemId = row.querySelector('.item-id').textContent.toLowerCase();
                const itemTitle = row.querySelector('.item-title').textContent.toLowerCase();
                
                if (itemId.includes(searchTerm) || itemTitle.includes(searchTerm)) {
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