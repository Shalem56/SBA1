<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/register.css" />
<title>User Registration Page</title>
</head>
<body >
<jsp:include page="header.jsp"/>
<h1 id="welcomeText" align="center">eLoan Login</h1>
	<div class="tab" align="center"> 
		<input type="button" class="tablinks" value="Customer" onclick="viewInfo(event, 'Customer')" id="defaultOpen" >
		<input type="button" class="tablinks" value="Admin" onclick="viewInfo(event, 'Admin')">
	</div>
	
	<div id="Customer" class="tabcontent" align="center">
		<form class="custLoginform" action="user?action=validate&type=customer" method="post">
			<table>
			<tbody>
				<tr>
					<td><label for="loginid">User Name : </label></td>
					<td><input type="text" id="loginid" name="loginID"></td>
				</tr>
				<tr>
					<td><label for="password">Password : </label></td>
					<td><input type="password" id="password" name="password"></td>
				</tr>
				</tbody>
			</table>
			<br>
			<br>
			<a><input type="submit" value="Login" id="login"></a>
		</form>
		<br>
		<a href="user?action=registeruser" id="register">New User? register here</a>
	</div>

	<div id="Admin" class="tabcontent" align="center">
		<form class="adminLoginform" action="user?action=validate&type=admin" method="post">	
			<table>
			<tbody>
				<tr>
					<td><label for="adminID">Admin ID : </label></td>
					<td><input type="text" id="adminID" name="adminID"></td>
				</tr>
				<tr>
					<td><label for="password">Password : </label></td>
					<td><input type="password" id="password" name="password"></td>
				</tr>
				</tbody>
			</table>
			<br>
			<br>
			<a><input type="submit" value="Login" id="login"></a>
		</form>
		<br>
	</div>
	<script>document.getElementById("defaultOpen").click();</script>
<hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>