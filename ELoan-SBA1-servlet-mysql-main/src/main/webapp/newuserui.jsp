<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
tr td[1] {
text-align: right;
}
</style>

<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/register.css" />
<link rel="stylesheet" type="text/css" href="css/homePage.css" />
<meta charset="ISO-8859-1">
<title>New user registration</title>
</head>
<body>
<jsp:include page="header.jsp"/>
	<!-- read user name and password from user to create account
	     and send to usercontrollers registeruser method
	     
	-->
	<% if(request.getAttribute("newUser")!=null) {%>
	
	<h2 id="welcomeText" align="center">New User Registration</h2>
	
		<form action="user?action=registernewuser" method="post">
		    
		<table class="newUser" style="background: #84848c;">
			<tbody>
			<tr><td colspan="2"> </td></tr>
			<tr><td colspan="2"> </td></tr>
			<tr><td colspan="2"> </td></tr>
			<tr>
				<td><label for="firstname">First Name : </label> </td>
				<td><input type="text" id="firstname" name="firstname" minlength="3" required></td>
			</tr>
			<tr>
				<td><label for="lastname">Last Name : </label> </td>
				<td><input type="text" id="lastname" name="lastname" minlength="3" required> </td>
			</tr>
			<tr>
				<td><label for="dob">Date of Birth : </label> </td>
				<td><input type="date" id="dob" name="dob" required> </td>
			</tr>
			<tr>
				<td><label for="mobile">Mobile : </label> </td>
				<td><input type="tel" id="mobile" name="mobile" pattern="[1-9]{1}[0-9]{9}" required> </td>
			</tr>
			<tr>
				<td><label for="email">Email : </label> </td>
				<td><input type="email" id="email" name="email" required> </td>
			</tr>
			<tr>
				<td><label for="city">City : </label> </td>
				<td><input type="text" id="city" name="city" required> </td>
			</tr>
			<tr>
				<td><label for="state">State : </label> </td>
				<td><input type="text" id="state" name="state" required> </td>
			</tr>
			<tr>
				<td><label for="country">Country : </label> </td>
				<td><input type="text" id="country" name="country" required> </td>
			</tr>
			<tr>
				<td><label for="pincode">Pincode : </label> </td>
				<td><input type="text" id="pincode" name="pincode" required> </td>
			</tr>
			<tr>
				<td><label for="address">Address : </label> </td>
				<td><TextArea id="address" name="address" required></TextArea> </td>
			</tr>
			</tbody>
		</table>
			<br>
		<table style="background: #84848c;width: 580px;text-align: center;" class="pswd">
			<tbody>
			<tr>
				<td colspan="2"><label for="usernameLabel" style="color: #d00013;">Note: For New Registration UserName will be auto-generated.</label></td>
			</tr>
			<tr>
				<td colspan="2"><label for="password">Enter Password for the Account : </label> </td>
			</tr>
			<tr>
			<td><input type="password" id="password" name="password" required minlength="4"> </td>
			</tr>
			</tbody>
			</table>
<br>
			<div align="center"><input type="submit" value="Register" id="register"></div>
		<br>
			
		</form>
		
		<%} else 
		{ 
			%>
			<h2 id="welcomeText" align="center">Registration Status</h2>
			<%
		if(request.getAttribute("userCreation").toString().equals("success")) 
		{
		%>
		<div align="center">
			<h1>New User successfully created !!</h1>
			<br>
			<h3>Login Details are mentioned below</h3>
			<h4>UserName : <%=request.getAttribute("newUserName") %></h4>
			<h4>Password : <%=request.getAttribute("newPassword") %></h4>
		</div>
		<% } 
		else 
		{ %>
		<div align="center">
		<h1>New User creation failed !!</h1>
		</div>
		
		<%} %>
		
		
		
		<%} %>
		
		<div align="center"><a href="index.jsp"><input type="button" value="Back" name="home" id="home"style="background: #6b0000;"/></a></div>
		<jsp:include page="footer.jsp"/>
</body>
</html>