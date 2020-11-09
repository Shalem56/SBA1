<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.iiht.evaluation.eloan.dto.UserInfo"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/homePage.css" />
<meta charset="ISO-8859-1">
<title>User Home</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<%
	UserInfo userDetails = (UserInfo) session.getAttribute("userInfo");

%>

<h1 id="welcomeText" align="center">User Dash Board</h1>

<div align="center" style="width: 30%;color: #d8225d;"><h2>Hi <%=userDetails.getFirstName()%>, welcome again !!</h2></div>


<div align="center">
<a href="user?action=application&state=new"><input type="button" value="Apply for Loan" id="applyLoan" class="loanOption"></a><br>
<br>
<a href="trackloan.jsp"><input type="button" value="Track Loan Application" id="trackLoan" class="loanOption"></a><br>
<br>
<a href="editloan.jsp"><input type="button" value="Edit Loan Application" id="editLoan" class="loanOption"></a><br>
<br>
<a href="index.jsp"><input type="button" value="Logout" id="logout"></a>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>