<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="./base.jsp"%>


</head>
<body>


	<div class="container mt-3">

		<div class="row">

			<div class="col -md-12">

				<h1 class="text-center mb-3">Welcome to product App</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${product}" var="p">
						<tr>
							<th scope="row">TECHONLY${p.pid }</th>
							<td>${p.name }</td>
							<td>${p.description }</td>
							<td class="font-weight-bold"> &#8377; ${p.price }</td>
							<td>
						    <a href="delete/${p.pid}"> <i class="fa-sharp fa-solid fa-trash text-danger" style="font-size: 30px"></i> </a>
						    <a href="update/${p.pid}"> <i class="fa-solid fa-pen-nib" style="font-size: 30px"></i> </a>
						    
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>

<div class="container text-center">
<a href="${pageContext.request.contextPath}/" class="btn btn-outline-success">ADD PRODUCT</a>

</div>



			</div>

		</div>

	</div>


</body>
</html>