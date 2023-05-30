<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Adding Product</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<style>
.container {
	margin-top: 50px;
}

form {
	max-width: 400px;
	margin: 0 auto;
	background-color: #f8f9fa;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	font-weight: bold;
}

.form-control {
	border-radius: 3px;
}

.btn-primary {
	width: 100%;
}

.center-text {
	text-align: center;
	margin-bottom: 30px;
}
</style>
</head>
<body>
	<div class="container">
		<h1 class="center-text">Enter The Form</h1>
		<form action="App" method="get">
			<div class="form-group">
				<label for="productName">Enter the Product Name:</label> <input
					type="text" name="ProductName" id="productName"
					class="form-control" />
			</div>
			<div class="form-group">
				<label for="description">Enter the Description:</label> <input
					type="text" name="Description" id="description"
					class="form-control" />
			</div>
			<div class="form-group">
				<label for="price">Enter the Price:</label> <input type="text"
					name="Price" id="price" class="form-control" />
			</div>
			<input type="submit" value="Enter" class="btn btn-primary">
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>
</html>
