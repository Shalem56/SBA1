<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/homePage.css" />
<title>Loan Approval Status</title>
</head>
<body>
 <!--
     Read the values from the admin servlet and cal emi and other details and send to
     to the same admin servlet to update the values in the database 
  -->  
  
  
  <%
  
  String dataInsertFlag = session.getAttribute("dataInsertFlag").toString();
  String statusUpateFlag = session.getAttribute("statusUpateFlag").toString();
  
  
  
  if(dataInsertFlag.equals("true")) { 
  
  if(statusUpateFlag.equals("true")) {
  
  %>
  <div align="center">
  <h1>Loan Approved successfully !!</h1>
  </div>
  	<% } else { %>
  		<div align="center">
  		<h1>Loan Approved Unsuccessfully !!</h1>
  		</div>
  <%	}
  
  
  } else if(dataInsertFlag.equals("false")) { %>
	<div align="center">
	<h1>Loan Approved Unsuccessfully !!</h1>
</div>
	<% } else {%>
 	<div align="center">
 	<h1>Loan Declined successfully !!</h1>
	</div>

	<% } %>
	
	<div align="center">
	<a href="adminhome1.jsp"><input type="button" name="home" value="Home"></a>
</div>
</body>
</html>