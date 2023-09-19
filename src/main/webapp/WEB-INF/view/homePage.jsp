<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-dark bg-dark">
		<a href="addUser">ADD USER</a>
	</nav>
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Framework</th>
				<th scope="col">Action</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="a">
				<tr>
					<th scope="row">${a.id }</th>
					<td>${a.name }</td>
					<td>${a.email }</td>
					<td>${a.framework }</td>
					<td ><a href="show/${a.id }" class="btn btn-outline-info">Query</a></td>
					<td ><a href="edit/${a.id }" class="btn btn-outline-primary">Update</a></td>
					<td><a href="delete/${a.id }"  class="btn btn-outline-danger">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>