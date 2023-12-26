<%@page import="com.jsp.dao.CartDao"%>
<%@page import="com.jsp.entities.Cart"%>
<%@page import="com.jsp.dao.ItemDao"%>
<%@page import="com.jsp.entities.Item"%>
<%@page import="com.jsp.entities.Product"%>
<%@page import="com.jsp.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

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
</style>
</head>
<body>
	<div class="e1">
		<nav class="navbar navbar-expand-lg navbar-light bg-nav m-0 p-0 e1">
			<div
				class="container-fluid flex-row justify-content-center align-items-center">
				<div class="d-flex flex-row m-1 p-1" style="width: 50%;">
					<a class="navbar-brand mr-1 p-0" href="#"><img
						src="https://www.pngall.com/wp-content/uploads/2/R-Letter-PNG-File.png"
						style="width: 100px; height: 45px;"></a>
					<h4 class="text-white ml-5 font-weight-bold">Item Details</h4>
				</div>
				<div class="justify-content-between pl-3 ml-3">
					<a href="#"><button
							class="btn  btn-default  text-nav bg-white font-weight-bold">Login</button></a>


				</div>
			</div>
		</nav>
		<!-- First Navbar -->

	</div>
	<%
	Item i = new ItemDao().getItemById(Integer.parseInt(request.getParameter("id")));
	int n = i.getQuantity();
	Cart c=new CartDao().getCart(Integer.parseInt(request.getParameter("cid")));
	%>
	<div class="container-fluid">
		<div class="itembody">
			<div class="row">
				<div class="col-md-5 pic ">
					<h3>image details </h3>
					<div class="imag">
						<img
							src="<%=i.getImage() %>"
							height="450px">
					</div>
				</div>
				<div class="col-md-7 details">
					<span><%=i.getName()%> (<span class="text-muted ">In
							publishing and graphic design, Lorem ipsum (/ˌlɔː.rəm ˈɪp.səm/)
							is a placeholder text commonly used to demonstrate the visual
							form of a document or a typeface without relying on meaningful
							content. Lorem ipsum may be used as a placeholder before final
							copy is available.</span>)</span>
					<div class="qnt">
						<a href="add?id=<%= i.getId()%>&n=<%=n%>&cid=<%=c.getId() %>"><i class="fa fa-plus-square text-nav fa-2x" aria-hidden="true"></i></a>
						<span class="font-weight-bold"><%=n%></span>
						<%if(n>1) {%>
						<a href="minus?id=<%= i.getId()%>&n=<%=n%>&cid=<%=c.getId() %>"><i class="fa fa-minus-square text-nav fa-2x" aria-hidden="true"></i></a>
						<%}else{ %>
						<i class="fa fa-times text-danger fa-2x" aria-hidden="true"></i>
						<%} %>
					</div>
					<span><%=i.getType()%> (<span class="text-muted">In
							publishing and graphic design, Lorem ipsum (/ˌlɔː.rəm ˈɪp.səm/)
							is a placeholder text commonly used to demonstrate the visual
							form of a document or a typeface without relying on meaningful
							content. Lorem ipsum may be used as a placeholder before final
							copy is available.</span>)</span> <span>In publishing and graphic
						design, Lorem ipsum (/ˌlɔː.rəm ˈɪp.səm/) is a placeholder text
						commonly used to demonstrate the visual form of a document or a
						typeface without relying on meaningful content. Lorem ipsum may be
						used as a placeholder before final copy is available. It is also
						used to temporarily replace text in a process called greeking,
						which allows designers to consider the form of a webpage or
						publication, without the meaning of the text influencing the
						design. Lorem ipsum is typically a corrupted version of De finibus
						bonorum et malorum, a 1st-century BC text by the Roman statesman
						and philosopher Cicero, with words altered, added, and removed to
						make it nonsensical and improper Latin. The first two words
						themselves are a truncation of dolorem ipsum ("pain itself"). </span>
					<div class="dbtn">
						<span class="font-weight-bold "><i
							class="fa fa-inr fa-2x text-nav" aria-hidden="true"></i><%=i.getPrice()%></span>
						<a href="addtoCart2?id=<%=i.getId() %>&cid=<%=c.getId() %>"
							class="btn bg-nav text-white font-weight-bold">Add to cart</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>