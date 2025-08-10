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
          <form action="viewUsersServlet" method="post">
            <a class="nav-link" href="#"><button type="submit" class="btn btn-link p-0 m-0">View users</button></a>
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

<div class="container mt-5 pt-4">
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
                <td>
                  <form action="" method="post" style="margin:0;">
                    <input type="hidden" name="id" value="">
                    <input type="hidden" name="nic" value="">
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

</body>
</html>