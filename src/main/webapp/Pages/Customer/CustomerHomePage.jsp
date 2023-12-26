<%@page import="com.jsp.entities.Customer"%>
<%@page import="com.jsp.dao.CartDao"%>
<%@page import="com.jsp.entities.Cart"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.jsp.entities.Product"%>
<%@page import="java.util.List"%>
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
rotateY(
180deg
);
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
</style>
</head>

<body>
	<%
	Cart c = new CartDao().getCart(Integer.parseInt(request.getParameter("cid")));
	%>
	<div class="e1">
		<nav class="navbar navbar-expand-lg navbar-light bg-nav m-0 p-0 e1">
			<div class="container-fluid flex-row justify-content-center">
				<div class="d-flex flex-row m-1 p-1" style="width: 50%;">
					<a class="navbar-brand mr-1 p-0" href="#"><img
						src="https://www.pngall.com/wp-content/uploads/2/R-Letter-PNG-File.png"
						style="width: 100px; height: 45px;"></a>
					<div class="form-group m-0 p-0 col-9">
						<div class="m-0 p-0 input-group-text text-primary bg-white p-0">
							<input type="text" id="searchCat" class="form-control border-0"
								placeholder="Search for products,brands and more"> <span
								id="searchBtn"
								class="fa fa-search  form-control-feedback text-nav bg-white px-2"></span>
						</div>
					</div>
				</div>
				<div class="justify-content-between pl-3 ml-3">
					<%
					Customer customer = (Customer) session.getAttribute("customer");
					if(customer==null){
					%>
					<a href="CustomerLogin.jsp?cid=<%=c.getId()%>"><button
							class="btn  btn-default  text-nav bg-white font-weight-bold">Login</button></a>
					<%}else{ %>
						<a href="customerLogOut"><button
							class="btn  btn-default  text-nav bg-white font-weight-bold">Logout</button></a>
					<%} %>
					<div class="dropdown">
						<button class="btn  text-white dropdown-toggle font-weight-bold"
							data-toggle="dropdown">
							More<span class="caret"></span>
						</button>
						<div class="dropdown-content">
							<a href="#">Orders</a> <a href="#">Profile</a> <a href="#">Abount</a>
						</div>
					</div>
					<a href="GotoCart.jsp?cid=<%=c.getId()%>"><button
							class="btn text-white font-weight-bold" style="font-size: 19px;">
							<span id="searchBtn" class="fa fa-shopping-cart px-1"></span>Cart
						</button></a> <a href="../Merchant/MerchantLogin.jsp"><button
							class="btn text-white font-weight-bold" style="font-size: 19px;">
							<i class="fa fa-user-o px-1 "></i>Become a Seller
						</button></a>
				</div>
			</div>
		</nav>
		<!-- First Navbar -->

		<nav class="navbar navbar-expand-lg navbar-light bg-white border p-0"
			style="margin-top: 60px;">
			<div class="container-fluid  text-nav justify-content-center m-0 p-0">
				<div class="dropdown">
					<button id="Electronic"
						class="btn  dropbtn dropdown-toggle font-weight-bold m-1"
						type="button" data-toggle="dropdown" style="font-size: 14px;">
						Electronics<span class="caret"></span>
					</button>
					<div class="dropdown-content">
						<a href="#">Mobile</a> <a href="#">Headphone</a> <a href="#">trimmer</a>
					</div>
				</div>
				<div class="dropdown">
					<button id="Tv"
						class="btn dropbtn dropdown-toggle font-weight-bold m-1"
						type="button" data-toggle="dropdown" style="font-size: 14px;">
						TV&Appliances<span class="caret"></span>
					</button>
					<div class="dropdown-content">
						<a href="#">samsung</a> <a href="#">Lg</a> <a href="#">OLED</a>
					</div>
				</div>
				<div class="dropdown">
					<button id="Men"
						class="btn dropbtn dropdown-toggle font-weight-bold m-1"
						type="button" data-toggle="dropdown" style="font-size: 14px;">
						Men<span class="caret"></span>
					</button>
					<div class="dropdown-content">
						<a href="#">casuals</a> <a href="#">formals</a> <a href="#">party</a>
					</div>
				</div>
				<div class="dropdown">
					<button id="Women"
						class="btn dropbtn dropdown-toggle font-weight-bold m-1"
						type="button" data-toggle="dropdown" style="font-size: 14px;">
						Women<span class="caret"></span>
					</button>
					<div class="dropdown-content">
						<a href="#">saree</a> <a href="#">party wear</a> <a href="#">jackets</a>
					</div>
				</div>
				<div class="dropdown">
					<button id="Baby"
						class="btn dropbtn dropdown-toggle font-weight-bold m-1"
						type="button" data-toggle="dropdown" style="font-size: 14px;">
						Baby&Kids<span class="caret"></span>
					</button>
					<div class="dropdown-content">
						<a href="#">cosmetics</a> <a href="#">creams</a> <a href="#">toys</a>
					</div>
				</div>
				<div class="dropdown">
					<button id="Home"
						class="btn dropbtn dropdown-toggle font-weight-bold m-1"
						type="button" data-toggle="dropdown" style="font-size: 14px;">
						Home&Furniture<span class="caret"></span>
						<div class="dropdown-content">
							<a href="#">kitchen</a> <a href="#">home lights</a> <a href="#">home
								decor</a>
						</div>
					</button>
				</div>
				<div class="dropdown">
					<button id="Sports"
						class="btn dropdown-toggle font-weight-bold m-1" type="button"
						data-toggle="dropdown" style="font-size: 14px;">
						Sports,books&more<span class="caret"></span>
					</button>
					<div class="dropdown-content">
						<a href="#">cricket</a> <a href="#">badminton</a> <a href="#">more</a>
					</div>
				</div>
				<div>
					<button id="add" class="btn  font-weight-bold m-1">Add+</button>
				</div>
				<div>
					<button id="showData" class="btn font-weight-bold m-1">Show
						Products</button>
				</div>
				<div>
					<button id="sort" class="btn font-weight-bold m-1">Price
						Up</button>
				</div>
				<div>
					<button id="reverse" class="btn font-weight-bold m-1">Price
						Down</button>
				</div>

			</div>
		</nav>
	</div>
	<!-- <div class="container-fluid bg-primary text-light mt-1 m-0  ">
		<div class="row">
			<form id="form" class="m-2">
				<h1 class="p-2">ADD PRODUCT DETAILS</h1>
				<div class="row">
					<div class=" container justify-content-center">
						<div class="form-group">
							<label class="p-2">Add image Url</label> <input type="text"
								class="form-control p-2" id="Image"
								placeholder="Enter Image Url" required>
						</div>
						<div class="form-group">
							<label class="p-2">Add product name</label> <input type="text"
								class="form-control p-2" id="Product"
								placeholder="Enter Product Name" required>
						</div>
						<div class="form-group">
							<label class="p-2">Add Price</label> <input type="number"
								class="form-control p-2" id="Price" placeholder="Enter Price"
								required>
						</div>
						<div>
							<label class="p-2">Category</label> <select class="p-2"
								id="Category">
								<option value="electronic">Electronics</option>
								<option value="tv">TV&Appliances</option>
								<option value="men">Men</option>
								<option value="women">Women</option>
								<option value="baby">Baby&Kids</option>
								<option value="home">Home&Furniture</option>
								<option value="sports">Sports,books&more</option>
							</select>
						</div>
					</div>
				</div>
				<button class="btn btn-success" id="submit">Submit</button>
			</form>
		</div>
	</div> -->

	<div class="caro">
		<div id="carouselExampleIndicators" class="carousel mb-0 mx-4 slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">

				<div class="carousel-item active">
					<img class="d-block w-100"
						src="https://rukminim1.flixcart.com/flap/3376/560/image/de3e826deb18f627.jpg?q=50  "
						alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100"
						src="https://rukminim1.flixcart.com/flap/3376/560/image/a202fb36f2ed03de.jpg?q=50"
						alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100"
						src="https://rukminim1.flixcart.com/flap/1688/280/image/55b9b02b1222cfc8.jpg?q=50"
						alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div id="showDiv" class="container-fluid m-0 mt-1 p-0">
		<div id="cardsDiv" class="container-fluid row  mt-1 p-0"></div>
	</div>
	<div class="container-fluid">
		<div class="mainflex mx-1">
			<div class="flexbox border">
				<%
				List<Product> products = new ProductDao().getAllProduct();
				System.out.println(products.size());
				Iterator<Product> itr = products.iterator();
				if (!products.isEmpty()) {
					while (itr.hasNext()) {
						Product p = itr.next();
				%>
				<div class="divc col-md-4 ">
					<div class="card ">
						<img
							src="<%=p.getImage() %>"
							height="150px" class="card-img-top">
						<div class="card-body text-dark ">
							<small class="text-muted ">sponsered</small>
							<p class="card-text text-muted "><%=p.getCategory()%></p>
							<hr>
							<h6 class="card-title font-weight-bold"><%=p.getName()%></h6>
							<%-- <p class="card-subtitle mb-2 text-success"
							style="font-size: 16px;"><%=p.getPrice() %></p> --%>

						</div>
						<hr>
						<div class="card-body row justify-content-between">
							<span><i class="fa fa-inr" aria-hidden="true"></i><%=p.getPrice()%></span>
							<a href="addtoCart?pid=<%=p.getId()%>&cid=<%=c.getId()%>"
								class="btn bg-nav text-white">Add to cart</a>
						</div>
					</div>
				</div>
				<%
				}
				}
				%>

			</div>
			<div class="posterDiv">
				<img class="poster"
					src="https://rukminim1.flixcart.com/flap/464/708/image/7326117459d6663c.jpg?q=70">
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="cardDiv row mx-1 border ">
			<img class="col-sm-12 col-lg-4 mt-1"
				src="https://rukminim1.flixcart.com/flap/480/480/image/af2926cf02a3c3c9.jpg?q=50">
			<img class="col-sm-12 col-lg-4 mt-1"
				src="https://rukminim1.flixcart.com/flap/480/480/image/9581455d64cad13b.jpg?q=50">
			<img class="col-sm-12 col-lg-4 mt-1 "
				src="https://rukminim1.flixcart.com/flap/480/480/image/92b2b7267e3c9cf4.jpg?q=50">
		</div>
	</div>
	<div class="container-fluid">
		<div class="mx-4 border">
			<div class="row justify-content-between border m-1">
				<div>
					<h5 class="font-weight-bold">Top Rated Appliances For You</h5>
					<p class="text-muted">Shop Now</p>
				</div>
				<div>
					<button type="button"
						class="btn font-weight-bold btn-primary btn-block">VIEW
						ALL</button>
				</div>
			</div>
			<div class="flexbox2">
				<div class="card text-center">
					<img
						src="https://rukminim1.flixcart.com/image/150/150/jv6zi4w0/fan/v/r/n/renesa-smart-1200-ceiling-fan-gorilla-original-imafepmhzz3ekvak.jpeg?q=70"
						height="150px" class="card-img-top">
					<div class="card-body text-dark text-center">
						<h6 class="card-title font-weight-bold">Energy Efficient Fans</h6>
						<p class="card-subtitle mb-2 text-success"
							style="font-size: 16px;">From ₹1,099</p>
						<p class="card-text text-muted ">Orient,Usha&more</p>
					</div>
				</div>
				<div class="card text-center">
					<img
						src="https://rukminim1.flixcart.com/image/150/150/jialea80/television/v/m/w/samsung-65q7fn-original-imaf64f2fzug5wbp.jpeg?q=70"
						height="150px" class="card-img-top">
					<div class="card-body text-dark text-center">
						<h6 class="card-title font-weight-bold">Samsung QLED 8k TVs</h6>
						<p class="card-subtitle mb-2 text-success"
							style="font-size: 16px;">Up to 60%Off</p>
						<p class="card-text text-muted ">Brighter Colors</p>
					</div>
				</div>
				<div class="card text-center">
					<img
						src="https://rukminim1.flixcart.com/image/150/150/k20r8nk0/roti-khakra-maker/r/x/m/puri-press-roti-maker-khakhra-maker-chapati-maker-machine-medigo-original-imafhgrhf7bmns64.jpeg?q=70"
						height="150px" class="card-img-top">
					<div class="card-body text-dark text-center">
						<h6 class="card-title font-weight-bold">Roti Makers</h6>
						<p class="card-subtitle mb-2 text-success"
							style="font-size: 16px;">Upto 75% Off</p>
						<p class="card-text text-muted ">Prestige,Aiwa&More</p>
					</div>
				</div>
				<div class="card text-center">
					<img
						src="https://rukminim1.flixcart.com/image/150/150/jingcy80/electric-kettle/w/y/v/philips-hd9329-06-original-imaf6e6vz6seyhzd.jpeg?q=70"
						height="150px" class="card-img-top">
					<div class="card-body text-dark text-center">
						<h6 class="card-title font-weight-bold">Electric Kettle</h6>
						<p class="card-subtitle mb-2 text-success"
							style="font-size: 16px;">Upto 60% off</p>
						<p class="card-text text-muted ">Prestige,Singer&more</p>
					</div>
				</div>
				<div class="card text-center">
					<img
						src="https://rukminim1.flixcart.com/image/150/150/jjkbhjk0/sandwich-maker/5/q/g/nova-2-slice-sandwich-maker-original-imaf74a8zrqzfgug.jpeg?q=70"
						height="150px" class="card-img-top">
					<div class="card-body text-dark text-center">
						<h6 class="card-title font-weight-bold">Sandwich Makers</h6>
						<p class="card-subtitle mb-2 text-success"
							style="font-size: 16px;">Upto 80% Off</p>
						<p class="card-text text-muted ">Prestige,Nova&more</p>
					</div>
				</div>
				<div class="card text-center">
					<img
						src="https://rukminim1.flixcart.com/image/150/150/jd4u5jk0/mixer-grinder-juicer/h/k/8/prestige-41115-original-imaffff4thqwbq9t.jpeg?q=70"
						height="150px" class="card-img-top">
					<div class="card-body text-dark text-center">
						<h6 class="card-title font-weight-bold">Juicers</h6>
						<p class="card-subtitle mb-2 text-success"
							style="font-size: 16px;">Upto 50% Off</p>
						<p class="card-text text-muted ">Phillips,Prestige&more</p>
					</div>
				</div>
				<div class="card text-center">
					<img
						src="https://rukminim1.flixcart.com/image/150/150/jqwny4w0/room-heater/4/k/v/fksbrhqrg-flipkart-smartbuy-original-imafctdfzb5dhh5y.jpeg?q=70"
						height="150px" class="card-img-top">
					<div class="card-body text-dark text-center">
						<h6 class="card-title font-weight-bold">Room Heaters</h6>
						<p class="card-subtitle mb-2 text-success"
							style="font-size: 16px;">Upto 75% Off</p>
						<p class="card-text text-muted ">Usha,Bajaj&more</p>
					</div>
				</div>
				<div class="card text-center">
					<img
						src="https://rukminim1.flixcart.com/image/150/150/k0sgl8w0/landline-phone/r/j/j/c51-beetel-original-imafkg2wrahtjgfz.jpeg?q=70"
						height="150px" class="card-img-top">
					<div class="card-body text-dark text-center">
						<h6 class="card-title font-weight-bold">Landline</h6>
						<p class="card-subtitle mb-2 text-success"
							style="font-size: 16px;">Upto 30%Off</p>
						<p class="card-text text-muted ">Best Seller</p>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script>
    $(document).ready(function () {
        if (localStorage.flipkart != undefined) {
            console.log("flipkart key is present.!")
        }
        else {
            let obj = {
                array: []
            }
            localStorage.setItem("flipkart", JSON.stringify(obj))
            console.log("flipkart key is created .!")
        }
        $("#form").hide();

        $("#add").click(function () {
            $("#form").show();
        });


        $('#submit').click(function (e) //on clicking button this is called
        {
            e.preventDefault();



            var Image = $('#Image').val().trim();//taking values
            var Product = $('#Product').val().trim();
            var Price = $('#Price').val().trim();
            var Category = $('#Category').val();
            if (Image == "" || Product == "" || Price == "")//checkikng if input feilds are empty or not
            {
                alert("please fill all the feilds")
            }
            else {
                let user = new User(Image, Product, Price, Category);//calling object constructor everytime button is clicked
                // Data.push(user);//pushing into global array Data
                // updateData(Data)
                let getData = JSON.parse(localStorage.getItem("flipkart"))
                getData.array.push(user)
                localStorage.setItem("flipkart", JSON.stringify(getData))
                console.log(user)
                alert("New Product Data Created")
                $('input').val('');
                let getData2 = JSON.parse(localStorage.getItem("flipkart"))
                let Data = getData2.array
                createCard(Data); //calling createTable function
                $("#form").hide()
                console.log(Data)
            }
        })

        function User(img, pro, price, cat) //object constructor
        {
            this.Image = img;
            this.Product = pro;
            this.Price = price;
            this.Category = cat;

        }
        var getData2 = JSON.parse(localStorage.getItem("flipkart"))
        var Data = getData2.array

        function createCard(array) {
            console.log(array)
            $("#cardsDiv").html("")
            array.forEach(obj => {
                let card = `<div class="card col-lg-1 col-md-4 col-sm-8 m-1 ml-5 text-center border">
                        <img src="${obj.Image}" height="170px" class="card-img-top">
                        <div class="card-body text-dark">
                            <h5 class="card-title font-weight-bold"> ${obj.Product}</h5>
                            <p class="card-subtitle mb-2 text-success">${obj.Price}</p>
                            <p  class="card-text text-muted "> ${obj.Category}</p>
                        </div>
                    </div>`


                $("#cardsDiv").append(card)


            });
        }
        $('#showData').click(function () {
            let arr=Data
            createCard(arr)
            $("#showDiv").show();

        })

        $('#sort').click(function () {
            let arr = Data.sort(function (a, b) {
                return a.Price - b.Price;
            });
            createCard(arr)
        })
        $('#reverse').click(function () {
            let arr = Data.reverse(function (a, b) {
                return a.Price - b.Price;
            });
            createCard(arr)
        })
        $("#searchBtn").click(function () {
            let Product = $('#searchCat').val()
            let arr = Data.filter(function (val) {
                return val.Category == Product
            })
            createCard(arr)
        })
        $('#Electronic').click(function () {
            let arr = Data.filter(function (val) {
                return val.Category == "electronic"
            })
            createCard(arr)
        })
        $('#Tv').click(function () {
            let arr = Data.filter(function (val) {
                return val.Category == "tv"
            })
            createCard(arr)
        })
        $('#Men').click(function () {
            let arr = Data.filter(function (val) {
                return val.Category == "men"
            })
            createCard(arr)
        })
        $('#Women').click(function () {
            let arr = Data.filter(function (val) {
                return val.Category == "women"
            })
            createCard(arr)
        })
        $('#Baby').click(function () {
            let arr = Data.filter(function (val) {
                return val.Category == "baby"
            })
            createCard(arr)
        })
        $('#Home').click(function () {
            let arr = Data.filter(function (val) {
                return val.Category == "home"
            })
            createCard(arr)
        })
        $('#Sports').click(function () {
            let arr = Data.filter(function (val) {
                return val.Category == "sports"
            })
            createCard(arr)
        })

    });</script>

</body>
</html>