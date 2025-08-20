<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Item Management</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/NewCss.css">
<link rel="stylesheet" href="css/NewCss1.css">

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
    #searchInput {
        border-radius: 8px;
        border: 1px solid #ced4da;
        box-shadow: inset 0 1px 3px rgba(0,0,0,0.08);
    }

    .action-btn {
        background-color: #495057;
        color: white;
        border-radius: 6px;
        padding: 4px 10px;
        font-size: 14px;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    .action-btn:hover {
        background-color: #343a40;
    }

    .action-btns {
        display: flex;
        gap: 8px;
        justify-content: center;
        align-items: center;
    }

    .btn-primary {
        box-shadow: 0 4px 8px rgba(41, 128, 185, 0.3);
        border-radius: 8px;
        font-weight: 600;
    }
    .btn-secondary {
        border-radius: 8px;
    }
</style>
</head>
<body>

<%@ include file="nav.jsp" %>

<div class="table-container">

    <div class="row mb-6 align-items-center">
        <div class="col-md-4">
            <input type="text" id="searchInput" class="form-control" placeholder="Search by Item ID or Title">
        </div>
        <div class="col-md-4">
            <button id="clearSearch" class="btn btn-secondary w-45" style="display: none;">Clear</button>
        </div>
        <div class="col-md-4 text-md-end">
            <a href="addItems.jsp" class="btn btn-primary">
                ➕ Add New Item
            </a>
        </div>
    </div>

    <div class="card shadow rounded-4 border-0">
        <div class="card-body p-3">
            <div class="table-responsive">
                <table class="table table-hover table-striped align-middle mb-0">
                    <thead>
                        <tr>
                            <th scope="col">Item ID</th>
                            <th scope="col">Title</th>
                            <th scope="col">Author</th>
                            <th scope="col">Category</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col" class="text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody id="itemTableBody">
                        <c:forEach var="itm" items="${item}">
                            <tr class="item-row">
                                <td class="item-id">${itm.itemid}</td>
                                <td class="item-title">${itm.title}</td>
                                <td>${itm.author}</td>
                                <td>${itm.category}</td>
                                <td>${itm.price}</td>
                                <td>${itm.quantity}</td>
                                <td class="action-btns">
                                    <form action="singleItemData" method="post">
                                        <input type="hidden" name="itemid" value="${itm.itemid}">
                                        <button type="submit" class="action-btn">Update</button>
                                    </form>
                                    <form action="deleteItemsServlet" method="post">
                                        <input type="hidden" name="itemid" value="${itm.itemid}">
                                        <button type="submit" class="action-btn">Delete</button>
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
		<c:if test="${not empty popupMessage}">
		    <script>
		        alert("${popupMessage}");
		    </script>
		</c:if>

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
