<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/NewCss.css">
<link rel="stylesheet" href="css/NewCss1.css">

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
	
	
	#navbarContent{
	 margin-bottom:1px;
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

    <div class="card">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover align-middle">
                    <thead>
                        <tr>
                            <th scope="col">Bill ID</th>
                            <th scope="col">Bill Num</th>
                            <th scope="col">Date</th>
                            <th scope="col">Time</th>
                            <th scope="col">Total Items</th>
                            <th scope="col">Total</th>
                            <th scope="col">Points</th>
                            <th scope="col">Customer ID</th>
                            <th scope="col">Customer NIC</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="bl" items="${bill}">
                            <tr class="customer-row">
                                <td>${bl.billid}</td>
                                <td>${bl.billnum}</td>
                                <td >${bl.date}</td>
                                <td>${bl.time}</td>
                                <td>${bl.totalitems}</td>
                                <td>${bl.total}</td>
                                <td>${bl.points}</td>
                                <td>${bl.cusid}</td>
                                <td>${bl.cusnic}</td>
								<td>
								  <div style="display: flex; gap: 5px;">
								    <form action="deleteBillsServlet" method="post">
								      <input type="hidden" name="billid" value="${bl.billid}">
								      <button type="submit" class="btn btn-custom">Delete</button>
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



</body>
</html>
