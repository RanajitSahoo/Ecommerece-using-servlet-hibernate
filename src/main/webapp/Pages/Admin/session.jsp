<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>R-Ecommerce</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link  rel="icon" href="https://www.pngall.com/wp-content/uploads/2/R-Letter-PNG-File.png" type="image/icon type">
</head>
<body>
<%
String s = (String) session.getAttribute("email");
session=request.getSession();
if (session.isNew()) {
	response.sendRedirect("AdminLogin.jsp");
} else {
	response.sendRedirect("AdminHomePage.jsp");
}
%>
</body>
</html>