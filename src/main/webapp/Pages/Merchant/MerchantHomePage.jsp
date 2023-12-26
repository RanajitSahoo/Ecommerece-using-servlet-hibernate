<%@page import="java.util.Iterator"%>
<%@page import="com.jsp.dao.MerchantDao"%>
<%@page import="com.jsp.entities.Merchant"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>R-Ecommerce</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link  rel="icon" href="https://www.pngall.com/wp-content/uploads/2/R-Letter-PNG-File.png" type="image/icon type">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="../../assets/vendor/aos/aos.css" rel="stylesheet">
<link href="../../assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../../assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="../../assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="../../assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="../../assets/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link href="../../assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../../assets/css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css"
	integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk="
	crossorigin="anonymous" />

<style type="text/css">
body {
	/* background: url("../../assets/img/AdminLogin.jpg") top center; */
	background: url("../../assets/img/hero-bg.jpg") top center;
	/* background-color:linearGradient(45deg,black,white); */
	background-size: cover;
	background-attachment: fixed;
	background-repeat: no-repeat;
}

.d {
	width: 100%;
	height: 100vh;
	margin-top: 200px;
	display: flex;
	position: absolute;
	flex-direction: column;
	justify-content: flex-start;
	align-items: center;
}

.card {
	width: inherit;
	height: 120px;
	box-shadow: 13px 13px 20px;
	background-color: #96deff;
}

#m {
	width: 230px;
}

.bm {
	position: fixed;
	top: 50px;
}

.hidden {
	opacity: 0;
}

.b {
	display: flex;
	direction: row;
	justify-content: space-around;
	width: 250px;
}
.data{
	margin:auto;
	
	display: flex;
	direction: column;
	justify-content: center;
	align-items:center;
	width:1000px;
	height: 700px;
	color:black;
}
</style>
</head>
<body>
	<div class="fixed-top ">

		<header id="header" class="fixed-top ">
			<div
				class="container d-flex align-items-center justify-content-lg-between">

				<h1 class="logo me-auto me-lg-0">
					<a href="index.html">RV<span>.</span></a>
				</h1>


				<nav id="navbar" class="navbar order-last order-lg-0">
					<ul>
						<li><a class="nav-link active" href="MerchantHomePage.jsp">Home</a></li>


						<li><a class="nav-link " href="#services">Services</a></li>

						<li><a class="nav-link " href="#team">Team</a></li>

					</ul>

				</nav>
				<!-- .navbar -->
				<!-- <form action="searchMerchants" method="get">
				<div class="input-group input-group-lg ">
					<input type="text" class="form-control xx" name="search"
						placeholder="Search by maerchant name"
						style="width: 400px; height: 43px;">

					<button class="btn btn-info " type="submit" style="height: 43px;">
						<i class="bi bi-search p-1"></i>Search
					</button>

				</div>
			</form> -->

				<div class="b">
					<div>
						<form action="logoutMerchant" method="post">
							<button class="btn btn-info p-2" type="submit">
								<i class="bi bi-box-arrow-left p-2"></i>Log out
							</button>
						</form>
					</div>
					<div>
						<button type="button"
							class="btn btn-outline-info position-relative p-2">
							Merchant
							<%Merchant m = (Merchant) session.getAttribute("merchant");
							if(m!=null){%>
							<span
								class="position-absolute top-0 start-100 translate-middle p-2 bg-success border border-light rounded-circle">
								<span class="visually-hidden">New alerts</span>
							</span>
							<%}else{ %>
							<span
								class="position-absolute top-0 start-100 translate-middle p-2 bg-danger border border-light rounded-circle">
								<span class="visually-hidden">New alerts</span>
							</span>
							<%} %>
						</button>
					</div>
				</div>






			</div>
		</header>

		<%
		
		if (m.getStatus().equals("Active")) {
		%>
		<div class="container-fluid mt-3 bm">
			<div class="row mt-3 justify-content-evenly">
				<div class="col-2">
					<a href="AddProduct.jsp?id=<%= m.getId()%>"><button
							class="btn btn-outline-success btn-block p-3" id="m">Add
							Product</button></a>
				</div>
				<div class="col-2">
					<a href="ViewProduct.jsp?id=<%= m.getId()%>"><button
							class="btn btn-outline-primary btn-block p-3" id="m">View
							Products</button></a>
				</div>
				<div class="col-2 text-center">
					<a href="UpdateProduct.jsp?id=<%= m.getId()%>"><button
							class="btn btn-outline-info btn-block p-3" id="m">Update
							Product</button></a>
				</div>
				<div class="col-2">
					<a href="DeleteProduct.jsp?id=<%= m.getId()%>"><button
							class="btn btn-outline-danger btn-block p-3" id="m">
							Delete Product</button></a>
				</div>

			</div>
		</div>
	</div>

	<div class="container-fluid"></div>
	<%
	} else {
	%>
	<div class="container-fluid ">
	<div class="data ">
	<h1 class="text-center">Now your status is deactivate.Please
		Contact with admin Or you Can wait till your status active it will
		take few days to active.</h1></div>
	</div>
	
	<%
	}
	%>
</body>
</html>
