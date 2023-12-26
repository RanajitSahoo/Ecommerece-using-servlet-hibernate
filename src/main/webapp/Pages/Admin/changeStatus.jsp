<%@page import="com.jsp.entities.Merchant"%>
<%@page import="com.jsp.dao.MerchantDao"%>
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
String id=request.getParameter("id");
String status=request.getParameter("status");
if(status.equals("deActive"))status="Active";
else status="deActive";

Merchant merchant=new MerchantDao().getMerchantById(Integer.parseInt(id));
merchant.setStatus(status);
new MerchantDao().updateAdmin(merchant);
if(response.getStatus()==200)response.sendRedirect("AdminHomePage.jsp");
else out.println("not registered");

%>
</body>
</html>