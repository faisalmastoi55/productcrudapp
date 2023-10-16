<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>

<style type="text/css">

.image1{
	background: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.9)), url("resources/img/laptop.png");
	background-size: cover;
	background-attachment: fixed;
	background-position: center;
	height: 500px;
	width: auto;
}

</style>


</head>
<body class="image1">

	<div class="container mt-3 text-white">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Change Product Detail</h1>

				<form action="${pageContext.request.contextPath }/handle-product"
					method="post">
					<input type="hidden" class="form-control" name="id"
						value="${product.id }">

					<div class="mb-3">
						<label for="name" class="form-label">Product Name</label> <input
							type="text" class="form-control" id="name" name="name"
							placeholder="Enter the product name here"
							value="${product.name }">
					</div>

					<div class="mb-3">
						<label for="exampleFormControlTextarea1" class="form-label">Product
							Description</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							name="description" rows="5"
							placeholder="Enter the product description">${product.description }</textarea>
					</div>

					<div class="mb-3">
						<label for="price" class="form-label">Product Price</label> <input
							type="text" class="form-control" id="price" name="price"
							placeholder="Enter product price" value="${product.price }">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-warning">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>