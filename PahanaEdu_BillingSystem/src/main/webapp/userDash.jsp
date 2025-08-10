<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <title>Cashier Dashboard</title>
    
    <style>
    	.nav-item {
		  padding: 0 20px;
		}
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            margin: 0;
            padding: 0;
        }

        .dashboard-container {
            display: flex;
            align-items: center;
            justify-content: flex-start;
            height: 100vh;
            padding-left: 50px;
            background: linear-gradient(to right, #343a40, #495057);
            color: white;
        }

        .welcome-box {
            max-width: 500px;
            background: rgba(0, 0, 0, 0.4);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.3);
        }

        .welcome-box h1 {
            font-size: 38px;
            margin: 0;
            color: #f8f9fa;
        }

        .welcome-box h2 {
            font-size: 26px;
            margin-top: 10px;
            color: #ced4da;
        }

        .role-tag {
            display: inline-block;
            padding: 6px 14px;
            background-color: #ffc107;
            color: black;
            border-radius: 20px;
            font-weight: bold;
            font-size: 14px;
            margin-top: 15px;
        }

        .btn-start {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s;
        }

        .btn-start:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
	<%@ include file="nav.jsp" %>

    <div class="dashboard-container">
        <div class="welcome-box">
            <h1>Welcome to</h1>
            <h2>Pahana Edu Billing System</h2>
            <div class="role-tag">Cashier Dashboard</div>
            <br>
            
        
	
		<form action="viewBillingServlet" method="post">
	
		<button class="btn-start" type="submit">Start Billing</button>
	</form>
        </div>
    </div>

</body>
</html>
