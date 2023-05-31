<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="com.adder.AddingInfo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<style>
.container {
	margin-top: 50px;
}

/* Custom table styles */
.table-container {
	overflow-x: auto;
}

.table {
	width: 100%;
	max-width: 100%;
	margin-bottom: 1rem;
	color: #212529;
}

.table th, .table td {
	padding: 0.75rem;
	vertical-align: top;
	border-top: 1px solid #dee2e6;
}

.table thead th {
	vertical-align: bottom;
	border-bottom: 2px solid #dee2e6;
}

.table tbody+tbody {
	border-top: 2px solid #dee2e6;
}

.table-sm th, .table-sm td {
	padding: 0.3rem;
}

.table-bordered {
	border: 1px solid #dee2e6;
}

.table-bordered th, .table-bordered td {
	border: 1px solid #dee2e6;
}

.table-bordered thead th, .table-bordered thead td {
	border-bottom-width: 2px;
}

.table-striped tbody tr:nth-of-type(odd) {
	background-color: rgba(0, 0, 0, 0.05);
}

.table-hover tbody tr:hover {
	background-color: rgba(0, 0, 0, 0.075);
}

.button-container {
	display: flex;
	justify-content: center;
	margin-top: 20px;
}

.back-button {
	background-color: blue;
	border: 2px solid black;
	color: white;
	padding: 5px 20px;
	text-align: center;
	display: inline-block;
	font-size: 20px;
	cursor: pointer;
}

/* Responsive table */
@media screen and (max-width: 767px) {
	.table-responsive-sm {
		overflow-x: auto;
		-webkit-overflow-scrolling: touch;
	}
	.table-responsive-sm>.table-bordered {
		border: 0;
	}
}
</style>
</head>
<body>
	<div class="container">
		<h1>Product List</h1>
		<div class="table-container table-responsive-sm">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>Product ID</th>
						<th>Product Name</th>
						<th>Description</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
					<%
					Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
					cfg.addAnnotatedClass(com.adder.AddingInfo.class);
					SessionFactory factory = cfg.buildSessionFactory();
					List<AddingInfo> productList = factory.openSession().createQuery("FROM AddingInfo").list();
					for (AddingInfo product : productList) {
					%>
					<tr>
						<td><%=product.getProductID()%></td>
						<td><%=product.getProductName()%></td>
						<td><%=product.getDescription()%></td>
						<td><%=product.getPrice()%></td>
					</tr>
					<%
					}
					factory.close();
					%>
				</tbody>
			</table>
		</div>
		<div class="button-container">
			<a href="index.jsp" class="back-button">Back to Main Menu</a>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
