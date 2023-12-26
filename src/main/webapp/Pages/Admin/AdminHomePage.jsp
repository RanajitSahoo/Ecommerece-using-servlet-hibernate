<%@page import="com.jsp.entities.Admin"%>
<%@page import="javax.persistence.Query"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
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
	margin-top:200px;
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

</style>
</head>
<body>
	<div class="fixed-top " >
	
	<header id="header" class="fixed-top ">
		<div
			class="container d-flex align-items-center justify-content-lg-between">

			<h1 class="logo me-auto me-lg-0">
				<a href="index.html">CRAMPS<span>.</span></a>
			</h1>


			<nav id="navbar" class="navbar order-last order-lg-0">
				<ul>
					<li><a class="nav-link active" href="AdminHomePage.jsp">Home</a></li>
					<li><a class="nav-link "
						href="../Merchant/MerchantRegister.jsp">Add Merchant</a></li>

					<li><a class="nav-link " href="#services">Services</a></li>

					<li><a class="nav-link " href="#team">Team</a></li>

				</ul>

			</nav>
			<!-- .navbar -->
			<form action="searchMerchants" method="get">
				<div class="input-group input-group-lg ">
					<input type="text" class="form-control xx" name="search"
						placeholder="Search by maerchant name"
						style="width: 400px; height: 43px;">

					<button class="btn btn-info " type="submit" style="height: 43px;">
						<i class="bi bi-search p-1"></i>Search
					</button>

				</div>
			</form>

			<form action="logoutAdmin" method="post">
				<button class="btn btn-info p-2" type="submit">
					<i class="bi bi-box-arrow-left p-2"></i>Log out
				</button>
			</form>
			<button type="button"
				class="btn btn-outline-info position-relative p-2">
				Admin
				<%
			String s = (String) session.getAttribute("email");
			if (s == null) {
			%>
				<span
					class="position-absolute top-0 start-100 translate-middle p-2 bg-danger border border-light rounded-circle">
					<span class="visually-hidden">New alerts</span>
				</span>
				<%
				} else {
				%>
				<span
					class="position-absolute top-0 start-100 translate-middle p-2 bg-success border border-light rounded-circle">
					<span class="visually-hidden">New alerts</span>
				</span>
				<%
				}
				%>

			</button>

		</div>
	</header>
	<div class="container-fluid mt-3 bm" >
			<div class="row mt-3 justify-content-evenly">
				<div class="col-2">
					<a href="Active.jsp?msg=Active"><button class="btn btn-outline-success btn-block p-3" id="m">Active
						Merchants</button></a>
				</div>
				<div class="col-2">
					<a href="DeActive.jsp?msg=deActive"><button class="btn btn-outline-primary btn-block p-3" id="m">De-Active
						Merchants</button></a>
				</div>
				<div class="col-2 text-center">
					<a href="All.jsp?msg=All"><button class="btn btn-outline-info btn-block p-3" id="m">All
						Merchants</button></a>
				</div>
				<div class="col-2">
					<a href="Blocked.jsp?msg=Blocked"><button class="btn btn-outline-danger btn-block p-3" id="m">
						Blocked Merchant</button></a>
				</div>
				<div class="col-2">
					<a href="UnBlocked.jsp?msg=unBlocked"><button class="btn btn-outline-warning btn-block p-3" id="m">UnBlocked
						Merchants</button></a>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid"  >
		

		<div class="d" >


			<%
			String search = request.getParameter("list");
			if (search != null) {
				if (search.length() >= 1) {
					EntityManagerFactory emf = Persistence.createEntityManagerFactory("dbConfig");
					EntityManager em = emf.createEntityManager();
					String sql = "select m from Merchant m where m.name like'%" + search + "%'";
					Query q = em.createQuery(sql);
					List<Merchant> merchants = q.getResultList();
					Iterator<Merchant> itr = merchants.iterator();
					while (itr.hasNext()) {
				Merchant m = itr.next();
			%>
			<div class="card mt-3">
				<div class="card-body row">
					<div class="col-lg-1">
						<span><%=m.getId()%></span>
					</div>
					<div class="col-lg-3">
						<span><%=m.getName()%></span>

					</div>
					<div class="col-lg-3">

						<span><%=m.getEmail()%></span>

					</div>
					<div class="col-lg-3">
						<span><%=m.getMobileNumber()%></span>

					</div>

					<div class="col-lg-1">
						<a class="btn btn-outline-primary"
							href="changeStatus.jsp?status=<%=m.getStatus()%>&id=<%=m.getId()%>"
							style="text-decoration: none;"><%=m.getStatus()%></a>
					</div>
					<div class="col-lg-1">
						<a href=""><i class="bi bi-person-badge p-4 fa-2x "
							style="color: white;"></i></a>
					</div>

				</div>
			</div>

			<%
			}

			}
			}

			else {
			
			List<Merchant> merchants = new MerchantDao().getAllMerchants();
			Iterator<Merchant> itr = merchants.iterator();
			while (itr.hasNext()) {
			Merchant m = itr.next();
			%>
			<div class="card mt-3" >
				<div class="card-body row">
					<div class="col-lg-1">
						<span><%=m.getId()%></span>
					</div>
					<div class="col-lg-3">
						<span><%=m.getName()%></span>

					</div>
					<div class="col-lg-3">

						<span><%=m.getEmail()%></span>

					</div>
					<div class="col-lg-3">
						<span><%=m.getMobileNumber()%></span>

					</div>

					<div class="col-lg-1">
						<a class="btn btn-outline-primary"
							href="changeStatus.jsp?status=<%=m.getStatus()%>&id=<%=m.getId()%>"
							style="text-decoration: none;"><%=m.getStatus()%></a>
					</div>
					<div class="col-lg-1">
						<a href=""><i class="bi bi-person-badge p-4 fa-2x "
							style="color: white;"></i></a>
					</div>

				</div>
			</div>

			<%
			}
			
			
			}
			%>




		</div>
	</div>



</body>
</html>