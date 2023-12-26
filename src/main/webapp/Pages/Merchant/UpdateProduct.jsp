<%@page import="java.util.Iterator"%>
<%@page import="com.jsp.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.dao.ProductDao"%>
<%@page import="com.jsp.entities.Merchant"%>
<%@page import="com.jsp.dao.MerchantDao"%>
<%@page import="com.jsp.repository.MerchantRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	position: static;
	
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
	width: 900px;
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
</style>
</head>
<body>
	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top ">
		<div
			class="container d-flex align-items-center justify-content-lg-around  ">
			
			<h1 class="logo me-auto me-lg-0 ">
				<a href="index.html" style="color: black;">CRA<span
					style="color: #02fae1;">M</span>PS.
				</a>
			</h1>





		</div>
	</header>
	<!-- End Header -->
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	MerchantRepository merchantDao = new MerchantDao();
	Merchant mer = merchantDao.getMerchantById(id);
	%>

	<div class="container-fluid ">
	
		<div class="d ">
			<%
			List<Product> ps = new ProductDao().getAllProductByMerchant(mer);
			Iterator<Product> itr = ps.iterator();
			while (itr.hasNext()) {
				Product p=itr.next();
			%>
				<div class="card mt-3">
				<div class="card-body row">
					<div class="col-lg-1">
						<span><%=mer.getId()%></span>
					</div>
					<div class="col-lg-3">
						<span><%=p.getName()%></span>

					</div>
					<div class="col-lg-3">

						<span><%=p.getImage()%></span>

					</div>
					

					<div class="col-lg-1">
						<a class="btn btn-outline-primary"
							href="EditProduct.jsp?pid=<%=p.getId()%>&mid=<%=mer.getId() %>"
							style="text-decoration: none;">Edit</a>
					</div>
					<div class="col-lg-1">
						<a href=""><i class="bi bi-person-badge p-4 fa-2x "
							style="color: white;"></i></a>
					</div>

				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>



</body>
</html>