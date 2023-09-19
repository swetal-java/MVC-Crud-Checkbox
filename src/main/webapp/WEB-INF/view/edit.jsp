<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: #000;
}

.card {
	width: 400px;
	border: none;
}

.btr {
	border-top-right-radius: 5px !important;
}

.btl {
	border-top-left-radius: 5px !important;
}

.btn-dark {
	color: #fff;
	background-color: #0d6efd;
	border-color: #0d6efd;
}

.btn-dark:hover {
	color: #fff;
	background-color: #0d6efd;
	border-color: #0d6efd;
}

.nav-pills {
	display: table !important;
	width: 100%;
}

.nav-pills .nav-link {
	border-radius: 0px;
	border-bottom: 1px solid #0d6efd40;
}

.nav-item {
	display: table-cell;
	background: #0d6efd2e;
}

.form {
	padding: 10px;
	height: 300px;
}

.form input {
	margin-bottom: 12px;
	border-radius: 3px;
}

.form input:focus {
	box-shadow: none;
}

.form button {
	margin-top: 20px;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body>
	<div class="d-flex justify-content-center align-items-center mt-5">


		<div class="card">

			<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
				<li class="nav-item text-center"><a class="nav-link active btl"
					id="pills-home-tab" data-toggle="pill" href="" role="tab"
					aria-controls="pills-home" aria-selected="true">Update Details</a></li>


			</ul>
			<div class="tab-content" id="pills-tabContent">
				<div class="tab-pane fade show active" id="pills-home"
					role="tabpanel" aria-labelledby="pills-home-tab">

					<div class="form px-4 pt-5">
						<form action="edit">
						<input type="hidden" value="${a.framework }">
							<input type="text" name="name" class="form-control"
								placeholder="Name.." value="${a.name }"> <input
								type="email" name="email" class="form-control"
								placeholder="Email Id.." value="${a.email }"> <input
								type="checkbox" name="framework" value="springmvc"
								${a.framework.contains("springmvc") ? "checked" : ""}><label>Spring
								MVC</label> <input type="checkbox" name="framework" value="springboot"
								${a.framework.contains("springboot") ? "checked" : ""}><label>Spring
								Boot</label> <input type="checkbox" name="framework" value="struts"
								${a.framework.contains("struts") ? "checked" : ""}><label>Struts </label> <br />

							<button class="btn btn-dark btn-block">Update</button>
						</form>
					</div>



				</div>


			</div>


		</div>


	</div>
</body>
</html>