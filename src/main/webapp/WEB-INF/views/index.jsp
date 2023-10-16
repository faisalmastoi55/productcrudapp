<html>

<head>
<%@include file="./base.jsp"%>

<!-- jstl uri -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">

.image{
	background: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.9)), url("resources/img/laptop.png");
	background-size: cover;
	background-attachment: fixed;
	background-position: center;
	height: 500px;
	width: auto;
}

</style>
</head>

<body class="image">

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-12 text-center text-white">
				<h1>Welcome to Product App</h1>

				<table class="table mt-4 text-white">
					<thead class="table-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col" class="text-center">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${product }" var="p">
							<tr>
								<th scope="row">TECHNOLY-${p.id }</th>
								<td>${p.name }</td>
								<td>${p.description }</td>
								<td class="fw-bold">&#x20B9; ${p.price }</td>
								<td class="text-center">
								<a href="delete/${p.id }"><i class="fa-solid fa-trash me-3" style="color: #ff0a0a;"></i></a>
								<a href="update/${p.id }"><i class="fa-solid fa-pen-nib"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
					<a href="add_product" class="btn btn-outline-success">Add
						Product</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
