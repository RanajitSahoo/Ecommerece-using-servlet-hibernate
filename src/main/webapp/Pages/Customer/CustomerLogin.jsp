<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<title>R-Ecommerce</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link  rel="icon" href="https://www.pngall.com/wp-content/uploads/2/R-Letter-PNG-File.png" type="image/icon type">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<style type="text/css">
.card {
	height: 400px;
	width: 300px;
	margin: 20px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	animation-name: example;
	animation-duration: 4s;
	transition: width 2s, height 2s;
}

.card:hover {
	width: 500px;
	heght: 500px;
}

@
keyframes example { 0%,100%{
	transform: rotateY(0deg);
}

50




%
{
transform




:




rotateY


(




180deg




)


;
}
}
.cardDiv>div {
	height: 400px;
	background-repeat: no-repeat;
}

.mainflex {
	display: flex;
	flex-flow: row wrap;
}

.flexbox {
	display: flex;
	flex-flow: row wrap;
	width: 100%;
}

.flexbox2 {
	display: flex;
	flex-flow: row wrap;
}

.carousel-inner {
	height: 340px;
}

.carousel-item img {
	height: 290px;
}

.posterDiv {
	width: 100%;
}

.poster {
	height: 420px;
	width: 100%;
}

.dropbtn {
	padding: 16px;
	font-size: 16px;
	border: none;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: teal;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	color: teal;
}

@media only screen and (max-width: 580px) {
	.card {
		width: 100%;
	}
	.flexbox {
		flex-flow: column wrap;
		width: 100%;
	}
	.flexbox2 {
		display: flex;
		flex-flow: column wrap;
	}
	.mainflex {
		display: flex;
		flex-flow: column wrap;
	}
	.poster {
		height: 300px;
		width: 100%;
	}
	.posterDiv {
		width: 100%;
	}
	.flip {
		flex-wrap: wrap;
	}
}

.caro {
	width: auto;
	margin-top: 130px;
}

.bg-nav {
	background-color: teal;
}

.text-nav {
	color: teal;
}

.divc {
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
}

.e1 {
	/*  overflow:hidden!important;  */
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 9999;
}

.itembody {
	/* background-color: red; */
	height: 100vh;
	width: 100vw;
	margin-top: 70px;
	position: static;
}

.pic {
	height: 100vh;
	width: 40vw;
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	align-items: center;
}

.details {
	height: 100vh;
	width: 60vw;
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	align-items: flex-start;
}

.dbtn {
	width: 60vw;
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	align-items: center;
}

.qnt {
	width: 60vw;
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	align-items: center;
	box-shadow: 0 2px 4px 0 teal, 0 4px 20px 0 teal;
	margin: 20px;
	padding: 8px;
	border-radius: 30px;
}

.imag:hover {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}
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
background-color:  teal;
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
	height: 100%;
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
	color: teal;
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
	background-color: teal;
	color: #fff;
	border-radius: 25px;
	box-shadow: 3px 3px 3px #b1b1b1, -3px -3px 3px #fff;
	letter-spacing: 1.3px;
}

.wrapper .btn:hover {
	background-color: teal;
}

.wrapper a {
	text-decoration: none;
	font-size: 0.8rem;
	color: teal;
}

.wrapper a:hover {
	color: teal;
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
<%int cid=Integer.parseInt(request.getParameter("cid")); %>
<div class="e1">
		<nav class="navbar navbar-expand-lg navbar-light bg-nav m-0 p-0 e1">
			<div
				class="container-fluid flex-row justify-content-center align-items-center">
				<div class="d-flex flex-row m-1 p-1" style="width: 100%;">
					<a class="navbar-brand mr-1 p-0" href="#"><img
						src="https://www.pngall.com/wp-content/uploads/2/R-Letter-PNG-File.png"
						style="width: 100px; height: 45px;"></a>
					
				</div>
				<h4 class="text-white  font-weight-bold">Login Customer</h4>
			</div>
		</nav>
		<!-- First Navbar -->

	</div>
	<div class="d-flex justify-content-right">
	<div class="wrapper ">
		<div class="logo">
			<img
				src="https://www.pngall.com/wp-content/uploads/2/R-Letter-PNG-File.png"
				alt="">
		</div>
		<div class="text-center mt-4 name">Customer</div>
		<form class="p-3 mt-3" action="customerLogin?cid=<%=cid %>" method="post">
			<div class="form-field d-flex align-items-center">
				<span class="fa fa-user text-nav"></span> <input type="text" name="email"
					id="userName" placeholder="Email" required="required">
			</div>
			<div class="form-field d-flex align-items-center">
				<span class="fa fa-key text-nav"></span> <input type="password"
					name="password" id="pwd" placeholder="Password" required="required">
			</div>
			<button class="btn mt-3 bg-nav">Login</button>
		</form>
		<div class="text-center fs-6">
            New Customer?<a href="CustomerRegister.jsp?cid=<%=cid%>">Register here</a>
        </div>
	</div></div>
</body>
</html>