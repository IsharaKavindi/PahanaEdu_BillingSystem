<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.Random" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <meta charset="UTF-8">
    <title>Generate Bill - PananaEdu</title>
    <style>
        body {
            background-color: #f8f9fa;
            padding: 20px;
        }
        .bill-container {
            background: white;
            max-width: 800px;
            margin: 0 auto;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            border-radius: 10px;
            overflow: hidden;
        }
        .bill-header {
            background: linear-gradient(135deg, #007bff 0%, #0056b3 100%);
            color: white;
            padding: 30px;
            text-align: center;
        }
        .customer-search {
            background: #e9ecef;
            padding: 20px;
            border-bottom: 2px solid #dee2e6;
        }
        .bill-body {
            padding: 30px;
        }
        .company-info {
            text-align: center;
            margin-bottom: 30px;
            padding-bottom: 20px;
            border-bottom: 2px solid #007bff;
        }
        .bill-details {
            display: flex;
            justify-content: space-between;
            margin-bottom: 30px;
            flex-wrap: wrap;
        }
        .bill-table {
            margin-bottom: 30px;
        }
        .total-section {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            border-left: 4px solid #007bff;
        }
        .print-section {
            text-align: center;
            margin-top: 30px;
            padding-top: 20px;
            border-top: 2px dashed #dee2e6;
        }
        @media print {
            .print-section, .customer-search {
                display: none !important;
            }
            body {
                background: white !important;
                padding: 0 !important;
            }
            .bill-container {
                box-shadow: none !important;
                margin: 0 !important;
                max-width: none !important;
            }
        }
        .search-result {
            background: #d4edda;
            border: 1px solid #c3e6cb;
            color: #155724;
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
        }
        .customer-not-found {
            background: #f8d7da;
            border: 1px solid #f5c6cb;
            color: #721c24;
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
        }
    </style>
</head>
<body>

	<div class="bill-container">
	    <!-- Bill Header -->
	    <div class="bill-header">
	        <h2 class="mb-0">Invoice</h2>
	        <p class="mb-0">PananaEdu Solutions</p>
	    </div>
	
	    <!-- Customer Search Section -->
	    <div class="customer-search">
	        <h5>Customer Information</h5>
	        
	        <form action="customerBillServlet" method="post">
	            <div class="row align-items-end">
	                <div class="col-md-4">
	                    <label for="customerNic" class="form-label">Customer NIC:</label>
	                    <input type="text" class="form-control" id="customerNic" name="nic" placeholder="Enter Customer NIC" required>
	                </div>
	                <div class="col-md-4">
	                    <label for="customerName" class="form-label">Customer Name:</label>
	                    <input type="text" class="form-control" id="customerName" name="name" placeholder="Enter Customer Name" required>
	                </div>
	                <div class="col-md-4">
	                    <button type="submit" class="btn btn-primary w-100">Add to Bill</button>
	                </div>
	            </div>
	        </form>
	
	    </div>
	
	    <!-- Bill Body -->
	    <div class="bill-body">
	        <!-- Company Information -->
	        <div class="company-info">
	            <h3 class="text-primary">PananaEdu Bookshop</h3>
	            <p class="mb-1">123 Main Street, Colombo, Sri Lanka</p>
	            <p class="mb-1">Phone: +94 11 123 4567 | Email: pananaedu@gmail.com</p>
	        </div>
	
	        <!-- Bill Details -->
	        <form id="billForm" method="post" action="addBillServlet">
	        <div class="bill-details">
	            <div class="bill-info">
	                <h6>Bill Information</h6><br>
					<%
						if (session.getAttribute("billNumber") == null) {
						    Random random = new Random();
						    long timestamp = System.currentTimeMillis();
						    int randomPart = random.nextInt(1000);
						    String billNo = "BILL-" + timestamp + randomPart;
						    session.setAttribute("billNumber", billNo);
						}
					%>
			
					<p class="mb-1"><strong>Bill No:</strong> 
					    <c:choose>
					        <c:when test="${not empty sessionScope.billNumber}">
					            ${sessionScope.billNumber}
					        </c:when>				     
					        <c:otherwise>
					            <span class="text-muted">Not Generated</span>
					        </c:otherwise>
					    </c:choose>
					    <input type="hidden" name="billnum" value="${sessionScope.billNumber}">
					</p>
					
					
					<c:set var="currentDate">
					    <c:choose>
					        <c:when test="${not empty billDate}">
					            ${billDate}
					        </c:when>
					        <c:otherwise>
					            <fmt:formatDate value="<%= new java.util.Date() %>" pattern="dd/MM/yyyy"/>
					        </c:otherwise>
					    </c:choose>
					</c:set>
					
					<c:set var="currentTime">
					    <c:choose>
					        <c:when test="${not empty billTime}">
					            ${billTime}
					        </c:when>
					        <c:otherwise>
					            <fmt:formatDate value="<%= new java.util.Date() %>" pattern="HH:mm:ss"/>
					        </c:otherwise>
					    </c:choose>
					</c:set>
					
					<p class="mb-1"><strong>Date:</strong> ${currentDate}
					    <input type="hidden" name="date" value="${currentDate}">
					</p>
					<p class="mb-0"><strong>Time:</strong> ${currentTime}
					    <input type="hidden" name="time" value="${currentTime}">
					</p>
				            </div>
		
		            <div class="customer-info">
		                <h6>Customer Details</h6>
						<c:set var="cus" value="${customer}"/>	
						<div class="form-floating mb-3">
						  <input type="text" class="form-control" id="floatingInput" name="cusid"  placeholder="id" value="${cus.id}">
						  <label for="floatingInput">Customer Id:</label>
						</div>
						
						<div class="form-floating">
						  <input type="text" class="form-control" id="floatingInput" name="name"  placeholder="Name" value="${cus.name}">
						  <label for="floatingInput">Customer Name:</label>
						  <input type="hidden" class="form-control" id="floatingInput" name="cusnic"  placeholder="Name" value="${cus.nic}">
						</div>
		            </div>
		        </div>

		        <!-- Items Table -->
		        <c:if test="${not empty sessionScope.billList}">
		            <div class="bill-table">
		                <h6>Items Purchased</h6>
		                <table class="table table-bordered">
		                    <thead class="table-dark">
		                        <tr>
		                            <th>Item ID</th>
		                            <th>Title</th>
		                            <th>Qty</th>
		                            <th>Unit Price (Rs.)</th>
		                            <th>Total (Rs.)</th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                        <c:set var="grandTotal" value="0" />
		                        <c:set var="totalQuantity" value="0" />
		                        
		                        <c:forEach var="billItem" items="${sessionScope.billList}" varStatus="status">
		                            <tr>
		                                <td>#${billItem.itemid}</td>
		                                <td>${billItem.title}</td>
		                                <td class="text-center">${billItem.quantity}</td>
		                                <td class="text-end">${billItem.price}</td>
		                                <td class="text-end">${billItem.quantity * billItem.price}</td>
		                            </tr>
		                            <c:set  var="grandTotal" value="${grandTotal + (billItem.quantity * billItem.price)}" />
		                            <c:set  var="totalQuantity" value="${totalQuantity + billItem.quantity}" />
		                        </c:forEach>
		                    </tbody>
		                </table>
		            </div>

		            <!-- Total Section -->
		            <div class="total-section">
		                <div class="row">
		                    <div class="col-md-6">
		                        <h6>Payment Summary</h6>
		                        <p class="mb-1">Total Items: 
		                        	<strong>${totalQuantity}</strong>
		                        	<input type="hidden" name="totalitems" value="${totalQuantity}">
		                        </p>
		                        <p class="mb-1">Points Earned: 
		                        	<strong>${(grandTotal / 400).intValue()} </strong>
		                        	<input type="hidden" name="points" value="${(grandTotal / 400).intValue()}">
		                        </p>
		                    </div>
		                    <div class="col-md-6">
		                        <div class="text-end">
		                            <div class="d-flex justify-content-between mb-2">
		                                <span>Subtotal:</span>
		                                <span>Rs. ${grandTotal}</span>
		                            </div>
		                            <div class="d-flex justify-content-between mb-2">
		                                <span>Tax (0%):</span>
		                                <span>Rs. 0.00</span>
		                            </div>
		                            <div class="d-flex justify-content-between mb-2">
		                                <span>Discount:</span>
		                                <span>Rs. 0.00</span>
		                            </div>
		                            <hr>
		                            <div class="d-flex justify-content-between">
		                                <strong>Grand Total:</strong>
		                                <strong class="text-primary h5">Rs. ${grandTotal}</strong>
		                                	<input type="hidden" name="total" value="${grandTotal}">
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		
		            <!-- Thank You Message -->
		            <div class="text-center mt-4">
		                <h6 class="text-primary">Thank you for your purchase!</h6>
		            </div>
		        </c:if>

        
            <div class="print-section">
                <button type="submit" class="btn btn-success me-2" >
                   🖨️ Print Bill
                </button>
            </div>

 	 </form>
   </div>
   
</div>

<script>

    document.addEventListener('DOMContentLoaded', function() {
        const customerInput = document.getElementById('customerNic');
        if (customerInput) {
            customerInput.focus();
        }
    });
</script>

</body>
</html>