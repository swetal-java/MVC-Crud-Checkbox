<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
					aria-controls="pills-home" aria-selected="true">Login</a></li>
				<li class="nav-item text-center"><a class="nav-link btr"
					id="pills-profile-tab" data-toggle="pill" href="addUser"
					role="tab" aria-controls="pills-profile" aria-selected="false">Signup</a>
				</li>

			</ul>
			<div class="tab-content" id="pills-tabContent">
				<div class="tab-pane fade show active" id="pills-home"
					role="tabpanel" aria-labelledby="pills-home-tab">

					<div class="form px-4 pt-5">

						 <input type="email" name="email"
							class="form-control" placeholder="Email Id.."> <input
							type="text" name="password" class="form-control"
							placeholder="Password">
							
						<button class="btn btn-dark btn-block">Login</button>

					</div>



				</div>
				<div class="tab-pane fade" id="pills-profile" role="tabpanel"
					aria-labelledby="pills-profile-tab">


					<div class="form px-4">

						<input type="text" name="" class="form-control" placeholder="Name">

						<input type="text" name="" class="form-control"
							placeholder="Email"> <input type="text" name=""
							class="form-control" placeholder="Phone"> <input
							type="text" name="" class="form-control" placeholder="Password">

						<button class="btn btn-dark btn-block">Signup</button>


					</div>



				</div>

			</div>




		</div>


	</div>
</body>
</html>