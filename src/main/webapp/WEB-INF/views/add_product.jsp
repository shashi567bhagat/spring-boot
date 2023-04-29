
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@include file="./base.jsp"%>


</head>
<body>




	<div class="text-center p-5">
		<h1 class="text-center">Fill the Product Details</h1>

		<form action="add" method="post">

			<div class="mb-2">
				<label for="exampleFormControlInput1" class="form-label">Product
					Name</label> <input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="product name"
					name="name">
			</div>


			<div class="mb-2 ">
				<label for="exampleFormControlTextarea1" class="form-label">Product
					Description </label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					rows="3" placeholder="product description" name="description"></textarea>
			</div>



			<div class="mb-2">
				<label for="exampleFormControlInput1" class="form-label">Product
					price</label> <input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="product price"
					name="price">
			</div>



		
				

				<div class="container text-center">
				
				<a href="${pageContext.request.contextPath}/"
					class="btn btn-primary btn-lg">BACK</a>
				
					<button type="submit" class="btn btn-primary btn-lg">ADD</button>
				</div>
			</div>

		</form>

	</div>


</body>
</html>