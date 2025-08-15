<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/NewCss.css">

<meta charset="UTF-8">
<title>Customer Management</title>
<style>
    body {
        background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
        font-family: "Segoe UI", Arial, sans-serif;
    }
    
        .table-container {
     background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
	  position: fixed;
	  top: 65px; 
	  left: 0;
	  right: 0;
	  background-color: white; 
	
	  padding: 0px 20px; 
	  margin-top:0px;
	  box-shadow: 0 2px 5px rgba(0,0,0,0.1); 
	  overflow-y: auto;
	   max-height: calc(100vh - 65px);
	}
	
    .card {
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.08);
    }
    .table thead {
        background: #343a40;
        color: white;
    }
    .table tbody tr:hover {
        background-color: #f1f5ff;
        transition: background 0.3s ease;
    }
    .btn-custom {
        background-color: #495057;
        color: white;
        border-radius: 6px;
        padding: 4px 10px;
        font-size: 14px;
    }
    .btn-custom:hover {
        background-color: #343a40;
    }
    #searchInput {
        border-radius: 8px;
        border: 1px solid #ced4da;
        box-shadow: inset 0 1px 3px rgba(0,0,0,0.08);
    }
</style>
</head>
<body>

<%@ include file="nav.jsp" %>

<div class="table-container">

    <div class="row mb-10 align-items-center" class="container" >
        <div class="col-md-4">
            <input type="text" id="searchInput" class="form-control" placeholder="Search by NIC">
        </div>
        <div class="col-md-2">
            <button id="clearSearch" class="btn btn-outline-secondary w-100" style="display: none;">Clear</button>
        </div>
        <div class="col-md-6 text-md-end">
            <a href="customerRegister.jsp" class="btn btn-primary shadow-sm">
                ➕ Add New Customer
            </a>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover align-middle">
                    <thead>
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
                                <td>${cus.id}</td>
                                <td>${cus.name}</td>
                                <td class="customer-nic">${cus.nic}</td>
                                <td>${cus.accountNum}</td>
                                <td>${cus.address}</td>
                                <td>${cus.contactNo}</td>
                                <td>${cus.email}</td>
								<td>
								  <div style="display: flex; gap: 5px;">
								    <form action="singleCustomerDataServlet" method="post">
								      <input type="hidden" name="id" value="${cus.id}">
								      <input type="hidden" name="nic" value="${cus.nic}">
								      <button type="submit" class="btn btn-custom">View</button>
								    </form>
								    <form action="singleData" method="post">
								      <input type="hidden" name="id" value="${cus.id}">
								      <input type="hidden" name="nic" value="${cus.nic}">
								      <button type="submit" class="btn btn-custom">Update</button>
								    </form>
								  </div>
								</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- JavaScript for Search -->
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
