<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Management</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/NewCss.css">


<style>
  body {
    background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
    font-family: "Segoe UI", Arial, sans-serif;
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

  td form button {
    background-color: #495057;
    color: white;
    border-radius: 6px;
    padding: 4px 10px;
    font-size: 14px;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  td form button:hover {
    background-color: #343a40;
  }

  td:last-child {
    text-align: center;
  }
</style>

</head>
<body>
	<%@ include file="nav.jsp" %>

   <div class="col-md-6 text-md-end">
      	<a href="addItems.jsp" class="btn btn-primary">
           + Add New Item
       </a>
   </div>

<div class="container mt-6 pt-4">

  <div class="card shadow rounded-4 border-0">
    <div class="card-body p-3">
    
      <div class="table-responsive">
        <table class="table table-hover table-striped align-middle mb-0">
          <thead>
            <tr>
              <th scope="col">Name</th>
              <th scope="col">Username</th>
              <th scope="col">Age</th>
              <th scope="col">Email</th>
              <th scope="col">Password</th>
              <th scope="col" class="text-center">Action</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="usr" items="${user}">
              <tr>
                <td>${usr.name}</td>
                <td>${usr.username}</td>
                <td>${usr.age}</td>
                <td>${usr.email}</td>
                <td>${usr.password}</td>
                <td>
                  <form action="" method="post" style="margin:0;">
                    <input type="hidden" name="id" value="">
                    <input type="hidden" name="nic" value="">
                    <button type="submit">Delete</button>
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

</body>
</html>