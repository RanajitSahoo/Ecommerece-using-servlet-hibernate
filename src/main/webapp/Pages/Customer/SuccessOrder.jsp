
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="com.jsp.dao.CustomerDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.jsp.entities.Item"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.dao.ItemDao"%>
<%@page import="com.jsp.entities.Cart"%>
<%@page import="com.jsp.dao.CartDao"%>
<%@page import="com.jsp.entities.Customer"%>
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
	/* height: 100vh;
	width: 100px; */
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	align-items: center;
}

.details {
	/* 	height: 100vh;
	width: 30vw; */
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	align-items: flex-start;
}

.dbtn {
	width: 758px;
	display: flex;
	margin-left: 111px;
	flex-direction: row;
	justify-content: flex-start;
	align-items: center;
	position: fixed;
	bottom: 0;
	background-color: #e8e8e8;
}

.cartdetails {
	width: 80%;
	height: 100%;
	margin: 10px 10px 30px 180px;
}

.price {
	width: 100%;
	height: 50%;
	margin: 10px 10px 20px 0px;
}

.safety {
	width: 100%;
	height: 50%;
	margin: 10px 10px 20px 0px;
}

.item {
	height: 180px;
	width: 100%;
}

.heading {
	box-shadow: 0px 8px 5px 0px rgba(0, 0, 0, 0.2);
}

.adr {
	margin-top: 20px;
	box-shadow: 0px 8px 5px 0px rgba(0, 0, 0, 0.2);
}

.items {
	box-shadow: 0px 8px 5px 0px rgba(0, 0, 0, 0.2);
}

.imga {
	height: 200px;
	width: 200px;
}
</style>
</head>
<body>
	<%
	int cid = Integer.parseInt(request.getParameter("cid"));
	Cart c = new CartDao().getCart(cid);
	int custid = Integer.parseInt(request.getParameter("custId"));
	Customer cust = new CustomerDao().getCustomerById(custid);
	%>
	<div class="e1">
		<nav class="navbar navbar-expand-lg navbar-light bg-nav m-0 p-0 e1">
			<div class="container-fluid flex-row justify-content-center">
				<div class="d-flex flex-row m-1 p-1" style="width: 50%;">
					<a class="navbar-brand mr-1 p-0" href="#"><img
						src="https://www.pngall.com/wp-content/uploads/2/R-Letter-PNG-File.png"
						style="width: 100px; height: 45px;"></a>

				</div>
				<div class="justify-content-between pl-3 ml-3">


					<div>
						<h4 class="text-white">
							Thank you
							<%=cust.getName()%>
							for shopping at R-Ecommerce
						</h4>
					</div>
				</div>
			</div>
		</nav>
		<!-- First Navbar -->
	</div>
	<div class="container-fluid">
		<div class="itembody">
			<div class="row">
				<div class="col-md-8 pic ">
					<div class="cartdetails">
						<div class="heading text-center bg-nav p-3 m-1">
							<span class="font-weight-bold text-white "><%=cust.getName()%>
								Your Order succesfully placed</span>
						</div>
						<div class="adr p-3">
							<div class="row justify-content-between">
								<span class="text-muted font-weight-bold">Ordered items </span>
								<span class="text-muted font-weight-bold">reached by
									12-jan-2024</span>
							</div>
						</div>
						<div class="items mt-5 ">
							<%
							List<Item> items = new ItemDao().getItemsByCart(c);
							int itemCount = 0;
							double totalPrice = 0;
							double discount = 0;
							double deliveryCharge = 80;
							double totalAmount = 0;
							Iterator<Item> itr = items.iterator();

							while (itr.hasNext()) {
								Item i = itr.next();
							%>
							<div class="item mt-5">

								<div class="row">
									<div class="col-md-3 text-center">
										<img src="<%=i.getImage()%>" height="450px" class="imga p-2">
									</div>
									<div class="col-md-6">
										<div>
											<span class="font-weight-bold "><%=i.getName()%></span> <span
												class="text-muted">(publishing and graphic design,
												Lorem ipsum (/ˌlɔː.rəm ˈɪp.səm/) is a placeholder text
												commonly used to)</span>
										</div>
										<div>
											<label class="text-muted font-weight-bold">Type</label> <span
												class="font-weight-bold "><%=i.getType()%></span> <label
												class="text-muted font-weight-bold">(100% Authentic
												products)</label>
										</div>
										<div>
											<label class="text-muted font-weight-bold">Quantity</label> <span
												class="font-weight-bold "><%=i.getQuantity()%></span>
										</div>
										<div>
											<label class="text-muted font-weight-bold">Price</label> <span
												class="font-weight-bold "><%=i.getPrice()%></span>
										</div>
										<div>
											<label class="text-muted font-weight-bold">sponsered
												by</label> <span class="font-weight-bold "><%=i.getMerchant().getName()%></span>
										</div>
									</div>
									<div class="col-md-3">
										<span class="font-weight-bold ">Order on <%=Date.valueOf(LocalDate.now())%></span>

									</div>
								</div>

							</div>
							<%
							itemCount+=i.getQuantity();
							
							totalPrice += (i.getQuantity() * i.getPrice());
							totalAmount = totalPrice + deliveryCharge - (discount);
							}
							%>
							<hr>



						</div>

					</div>
					<div class="dbtn mt-3 p-2">
					<%
					Cart cart=new Cart();
					Cart cart1=new CartDao().saveCart(cart);
					%>
						<a href="CustomerHomePage.jsp?cid=<%=cart1.getId() %>" class="btn bg-nav btn-lg text-white font-weight-bold">
							Continue Shopping</a>
					</div>

				</div>
				<div class="col-md-4 details ">

					<div class="price">
						<div class="heading text-center p-2 m-1">
							<span class="font-weight-bold text-muted  ">Order-Details</span>

						</div>
						<div class="adr1">
							<div class="row justify-content-between m-3">
								<span class="text-muted font-weight-bold">Ordered By</span> <span
									class="text-muted font-weight-bold"><%=cust.getName()%>(<%=cust.getMobieNumber() %>)</span>
							</div>
							<div class="row justify-content-between m-3">
								<span class="text-muted font-weight-bold">Ordered Address</span>
								<span class="text-muted font-weight-bold"><%=cust.getAddress().getStreet()%>,<%=cust.getAddress().getDistrict()%>,<%=cust.getAddress().getState()%>,<%=cust.getAddress().getPincode()%></span>
							</div>

						</div>
						<div class="adr1">
							<div class="row justify-content-between m-3">
								<span class="text-muted font-weight-bold">Email Address</span> <span
									class="text-muted font-weight-bold"><%=cust.getEmail()%></span>
							</div>

						</div>
						<div class="adr1">
							<div class="row justify-content-between m-3">
								<span class="text-muted font-weight-bold">Delivery Charge</span> <span class="text-muted font-weight-bold">80.00</span>
							</div>

						</div>
						<hr class="m-2">
						<div class="adr1">
							<div class="row justify-content-between m-3">

								<span class="text-muted font-weight-bold">Total Amount</span> <span class="text-muted font-weight-bold"><%=totalAmount %>(Delivery charge included here)</span>
							</div>

						</div>
						<div class="adr1 m-3">

							<span class="text-muted font-weight-bold">You have ordered <%=itemCount %> items successfully</span>


						</div>
					</div>
					<div class="safety mt-5">
						<span class="font-weight-bold ">Safe and Secure
							Payments.Easy returns.100% Authentic products.</span>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>