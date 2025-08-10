<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Help - Pahana Edu Billing System</title>
<style>
	.nav-item {
  padding: 0 20px;
}
</style>

<!-- Bootstrap CSS for layout -->
<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body style="font-family: Arial, sans-serif; background: linear-gradient(135deg, #f5f7fa, #c3cfe2); margin:0; padding:20px; color:#333;">

<%@ include file="nav.jsp" %>

<div style="max-width: 700px; margin: 60px auto; background: linear-gradient(145deg, #ffffff, #f9fbfd); padding: 30px 35px; border-radius: 16px; box-shadow: 0 12px 28px rgba(0, 0, 0, 0.1); font-size: 16px; line-height: 1.6; color: #2f3e4e; transition: box-shadow 0.3s ease;">

  <h1 style="text-align: center; color: #2c3e50; margin-bottom: 25px; border-bottom: 3px solid #2980b9; padding-bottom: 8px; font-weight: 700;">
    Help and User Guide
  </h1>

  <h2 style="color: #2980b9; margin-top: 25px; margin-bottom: 8px; font-weight: 600;">
    Add New Customer Accounts
  </h2>
  <p style="margin-top: 0;">
    Go to <em>Customer Management &rarr; Add Customer</em> and fill in:
  </p>
  <ul style="padding-left: 20px; margin-top: 0; color: #3b4a60;">
    <li style="margin-bottom: 6px;">Account Number (unique)</li>
    <li style="margin-bottom: 6px;">Full Name</li>
    <li style="margin-bottom: 6px;">Address</li>
    <li style="margin-bottom: 6px;">Telephone Number</li>
  </ul>

  <h2 style="color: #2980b9; margin-top: 25px; margin-bottom: 8px; font-weight: 600;">
    Edit Customer Information
  </h2>
  <p style="margin-top: 0;">
    Find customer and click <strong>Update</strong> to modify details.
  </p>

  <h2 style="color: #2980b9; margin-top: 25px; margin-bottom: 8px; font-weight: 600;">
    Manage Item Information
  </h2>
  <p style="margin-top: 0;">
    Add, update, or delete items in the <em>Item Management</em> section.
  </p>

  <h2 style="color: #2980b9; margin-top: 25px; margin-bottom: 8px; font-weight: 600;">
    Display Account Details
  </h2>
  <p style="margin-top: 0;">
    Search customers by account number or name to view details.
  </p>

  <h2 style="color: #2980b9; margin-top: 25px; margin-bottom: 8px; font-weight: 600;">
    Calculate and Print Bill
  </h2>
  <p style="margin-top: 0;">
    Select customer, enter units consumed, and the bill will be calculated automatically. Then print or save.
  </p>

  <h2 style="color: #2980b9; margin-top: 25px; margin-bottom: 8px; font-weight: 600;">
    Exit System
  </h2>
  <p style="margin-top: 0;">
    Click <strong>Logout</strong> at top-right to safely exit.
  </p>

</div>

</body>
</html>
