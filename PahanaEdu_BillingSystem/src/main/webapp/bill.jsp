<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/NewCss.css">
    <meta charset="UTF-8">
    <title>Item List and Billing</title>
    <style>
        body {
       		 background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            padding-top: 76px; 
        }
        .bill-sidebar {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            border-left: 3px solid #007bff;
            max-height: 80vh;
            overflow-y: auto;
        }
        .bill-item {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-bottom: 10px;
            padding: 12px;
            transition: transform 0.2s;
        }
        .bill-item:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.15);
        }
        .total-section {
            background: #007bff;
            color: white;
            border-radius: 10px;
            padding: 15px;
            margin-top: 15px;
        }
        .empty-cart {
            text-align: center;
            padding: 40px 20px;
            color: #6c757d;
        }
        .table-container {
            max-height: 80vh;
            overflow-y: auto;
        }
    </style>
</head>
<body>

<%@ include file="nav.jsp" %>

    <div class="container-fluid mt-4">
        <div class="row">
            <!-- Left Side - Items Table -->
            <div class="col-lg-8">
                <div class="card shadow rounded-4 border-0">
                    <div class="card-header bg-primary text-white">
                        <h5 class="mb-0">Available Items</h5>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive table-container">
                            <table class="table table-hover table-striped align-middle mb-0">
                                <thead class="table-dark sticky-top">
                                    <tr>
                                        <th scope="col">Item ID</th>
                                        <th scope="col">Title</th>
                                        <th scope="col">Price (Rs.)</th>
                                        <th scope="col">Add to Cart</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:choose>
                                        <c:when test="${not empty item}">
                                            <c:forEach var="itm" items="${item}">
                                                <tr>
                                                    <td><span class="badge bg-secondary">#${itm.itemid}</span></td>
                                                    <td><strong>${itm.title}</strong></td>
                                                    <td><span class="text-success fw-bold">Rs. ${itm.price}</span></td>
                                                    <td>
                                                        <form action="billServlet" method="post" class="d-flex align-items-center">
                                                            <input type="hidden" name="itemid" value="${itm.itemid}" />
                                                            <input type="hidden" name="title" value="${itm.title}" />
                                                            <input type="hidden" name="price" value="${itm.price}" />
                                                            <div class="input-group" style="width: 120px;">
                                                                <input type="number" name="quantity" value="1" min="1" 
                                                                       class="form-control form-control-sm" />
                                                                <button type="submit" class="btn btn-primary btn-sm">
                                                                    ➕ Add
                                                                </button>
                                                            </div>
                                                        </form>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                            <tr>
                                                <td colspan="4" class="text-center text-danger py-5">
                                                    <h6>No items found in the database.</h6>
                                                </td>
                                            </tr>
                                        </c:otherwise>
                                    </c:choose>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Side - Bill Display -->
            <div class="col-lg-4">
                <div class="bill-sidebar p-3">
                    <div class="card border-0 shadow">
                        <div class="card-header bg-success text-white">
                            <h5 class="mb-0">Current Bill</h5>
                        </div>
                        <div class="card-body">
                            <!-- Bill Items -->
                            <div class="bill-items">
                                <c:choose>
                                    <c:when test="${not empty sessionScope.billList}">
                                        <c:set var="totalAmount" value="0" />
                                        <c:set var="totalItems" value="0" />
                                        
                                        <c:forEach var="billItem" items="${sessionScope.billList}">
                                            <div class="bill-item">
                                                <div class="d-flex justify-content-between align-items-start">
                                                    <div class="flex-grow-1">
                                                        <h6 class="mb-1 text-primary">${billItem.title}</h6>
                                                        <small class="text-muted">ID: ${billItem.itemid}</small>
                                                    </div>
                                                    <div class="text-end">
                                                        <div class="fw-bold text-success">
                                                            Rs. ${billItem.quantity * billItem.price}
                                                        </div>
                                                        <small class="text-muted">
                                                            ${billItem.quantity} × Rs. ${billItem.price}
                                                        </small>
                                                    </div>
                                                </div>
                                            </div>
                                            <c:set var="totalAmount" value="${totalAmount + (billItem.quantity * billItem.price)}" />
                                            <c:set var="totalItems" value="${totalItems + billItem.quantity}" />
                                        </c:forEach>

                                        <!-- Bill Summary -->
                                        <div class="total-section">
                                            <div class="d-flex justify-content-between mb-2">
                                                <span>Total Items:</span>
                                                <span class="fw-bold">${totalItems}</span>
                                            </div>
                                            <div class="d-flex justify-content-between mb-2">
                                                <span>Subtotal:</span>
                                                <span class="fw-bold">Rs. ${totalAmount}</span>
                                            </div>
                                            <div class="d-flex justify-content-between mb-3">
                                                <span>Points Earned:</span>
                                                <span class="fw-bold">${(totalAmount / 400).intValue()}</span>
                                            </div>
                                            <hr class="my-3" style="border-color: rgba(255,255,255,0.3);">
                                            <div class="d-flex justify-content-between">
                                                <span class="h5">Grand Total:</span>
                                                <span class="h5 fw-bold">Rs. ${totalAmount}</span>
                                            </div>
                                        </div>

                                        <!-- Action Buttons -->
                                        <div class="mt-3 d-flex justify-content-center gap-2" >
                                        	<form action="generateBillServlet" method="post" class="d-flex align-items-center">
	                                            <button class="btn btn-success btn-lg" onclick="generateBill()" >
	                                                Generate Bill
	                                            </button>
                                            </form>
                                            <form action="clearBillServlet" method="post"  class="d-flex align-items-center">
	                                            <button class="btn btn-success btn-lg" onclick="clearCart()">
	                                                Clear Cart
	                                            </button>
                                            </form>
                                        </div>

                                    </c:when>
                                    <c:otherwise>
                                        <div class="empty-cart">
                                            <div class="mb-3">

                                                    
                                            </div>
                                            <h6 class="text-muted">Your cart is empty</h6>
                                            <p class="small text-muted mb-0">Add some items from the table to get started</p>
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>

                    <!-- Quick Stats Card -->
                    <div class="card border-0 shadow mt-3">
                        <div class="card-body">
                            <h6 class="card-title">Quick Stats</h6>
                            <div class="row text-center">
                                <div class="col-4">
                                    <div class="h4 text-primary mb-1">${not empty sessionScope.billList ? sessionScope.billList.size() : 0}</div>
                                    <small class="text-muted">Items</small>
                                </div>
                                <div class="col-4">
                                    <div class="h4 text-success mb-1">Rs. ${not empty sessionScope.billList ? totalAmount : 0}</div>
                                    <small class="text-muted">Total</small>
                                </div>
                                <div class="col-4">
                                    <div class="h4 text-warning mb-1">${not empty sessionScope.billList ? (totalAmount / 400).intValue() : 0}</div>
                                    <small class="text-muted">Points</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
    function generateBill() {
        const hasItems = ${not empty sessionScope.billList};
        if (!hasItems) {
            alert('Please add some items to the cart first!');
            return;
        }
        
        const totalAmount = ${not empty sessionScope.billList ? totalAmount : 0};
        
        if (confirm('Generate bill for Rs. ' + totalAmount + '?')) {
            window.location.href = 'generateBillServlet';
        }
    }

    function clearCart() {
        const hasItems = ${not empty sessionScope.billList};
        if (hasItems) {
            if (confirm('Are you sure you want to clear the cart?')) {

                window.location.href = 'clearBillServlet';
            }
        }
    }

    document.addEventListener('DOMContentLoaded', function() {
        const billItems = document.querySelector('.bill-items');
        if (billItems) {
            billItems.scrollTop = billItems.scrollHeight;
        }
    });

        function clearCart() {
            if (${not empty sessionScope.billList}) {
                if (confirm('Are you sure you want to clear the cart?')) {
                   
                    window.location.href = 'clearCartServlet';
                }
            }
        }
        
        document.addEventListener('DOMContentLoaded', function() {
            const billItems = document.querySelector('.bill-items');
            if (billItems) {
                billItems.scrollTop = billItems.scrollHeight;
            }
        });
    </script>

</body>
</html>