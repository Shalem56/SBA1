<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/homePage.css" />
<meta charset="ISO-8859-1">
<title>Admin Home</title>
</head>
<body >
<jsp:include page="header.jsp"/>

<h1 id="welcomeText" align="center">Admin Dash Board</h1>


<div align="center">
<a href="admin?action=listall"><input type="button" value="List All" id="listAll" class="loanOption"></a><br>
<br>
<a href="admin?action=process"><input type="button" value="Process Loan" id="processLoan" class="loanOption"></a><br>
<br>
<a href="index.jsp"><input type="button" value="Logout" id="logout"></a>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>