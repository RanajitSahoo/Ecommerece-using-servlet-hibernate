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
<style type="text/css">
/* Importing fonts from Google */
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap')
	;

/* Reseting */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	/* background: url("../../assets/img/AdminLogin.jpg") top center; */
	background-image: url("../../assets/img/AdminLogin.jpg");
	background-size: cover;
	position: absolute;
}
.bg-c{
background-color:  #02fae1!important;
}
.wrapper {
    position:reative;
	max-width: 350px;
	min-height: 500px;
	margin: 80px 10px 80px 900px;
	padding: 40px 30px 30px 30px;
	background-color: #ecf0f3;
	border-radius: 15px;
	box-shadow: 13px 13px 20px #cbced1, -13px -13px 20px ;
}

.logo {
	width: 145px;
	margin: auto;
}

.logo img {
	width: 100%;
	height: 80px;
	object-fit: cover;
	border-radius: 50%;
	box-shadow: 0px 0px 3px #5f5f5f, 0px 0px 0px 5px #ecf0f3, 8px 8px 15px
		#a7aaa7, -8px -8px 15px #fff;
}

.wrapper .name {
	
	font-weight: 600;
	font-size: 1.4rem;
	letter-spacing: 1.3px;
	padding-left: 10px;
	color: black;
}

.wrapper .form-field input {
	width: 100%;
	display: block;
	border: none;
	outline: none;
	background: none;
	font-size: 1.2rem;
	color: #666;
	padding: 10px 15px 10px 10px;
	/* border: 1px solid red; */
}

.wrapper .form-field {
	padding-left: 10px;
	margin-bottom: 20px;
	border-radius: 20px;
	box-shadow: inset 8px 8px 8px #cbced1, inset -8px -8px 8px #fff;
}

.wrapper .form-field .fas {
	color: #555;
}

.wrapper .btn {
	box-shadow: none;
	width: 100%;
	height: 40px;
	background-color: #03A9F4;
	color: #fff;
	border-radius: 25px;
	box-shadow: 3px 3px 3px #b1b1b1, -3px -3px 3px #fff;
	letter-spacing: 1.3px;
}

.wrapper .btn:hover {
	background-color: #039BE5;
}

.wrapper a {
	text-decoration: none;
	font-size: 0.8rem;
	color: #03A9F4;
}

.wrapper a:hover {
	color: #039BE5;
}

@media ( max-width : 380px) {
	.wrapper {
		margin: 30px 20px;
		padding: 40px 15px 15px 15px;
	}
}
</style>
</head>
<body>
	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top ">
		<div
			class="container d-flex align-items-center justify-content-lg-around  ">

			<h1 class="logo me-auto me-lg-0 " >
				<a href="index.html" style="color: black;" >CR<span style="color: #02fae1;" >A</span>MPS.</a>
			</h1>





		</div>
	</header>
	<!-- End Header -->


	<div class="d-flex justify-content-right">
	<div class="wrapper ">
		<div class="logo">
			<img
				src="../../assets/img/CRAMPS_page-0001.jpg"
				alt="">
		</div>
		<div class="text-center mt-4 name">Admin</div>
		<form class="p-3 mt-3" action="adminLogin" method="post">
			<div class="form-field d-flex align-items-center">
				<span class="far fa-user"></span> <input type="text" name="email"
					id="userName" placeholder="Email">
			</div>
			<div class="form-field d-flex align-items-center">
				<span class="fas fa-key"></span> <input type="password"
					name="password" id="pwd" placeholder="Password">
			</div>
			<button class="btn mt-3 bg-c" style="color:black;" >Login</button>
		</form>
		
	</div></div>

	









	<!-- Vendor JS Files -->
	<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
</body>
</html>