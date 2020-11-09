<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.iiht.evaluation.eloan.model.LoanInfo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/homePage.css" />
<meta charset="ISO-8859-1">
<script type="text/javascript" src="js/viewDetails.js"></script>
<title>Loan Application Form</title>
</head>
<body>

	<!--
	write the html code to accept laon info from user and send to placeloan servlet
-->


	<jsp:include page="header.jsp" />
	
	
  	<% if(request.getAttribute("state").equals("new") ){ 
		//request.setAttribute("state", "submitted");
	%>
	<div align="center">
	<form action="user?action=placeloan" method="POST">
		
		<h2 id="welcomeText" align="center">Apply For Loan</h2>

			<table class="applyLoanTable">
			<tbody>
				<tr>
					<td><label for="Loan Name">Loan Name</label></td>
					<td><input type="text" id="loanname" name="loanname" class="loanInfo" required></td>
				</tr>
			<tr>
				<td>
					<label for="amount">Enter your amount</label>
				</td>
				<td>
					<input type="number" id="loanamount" name="loanamount" class="loanInfo" required>
				</td>
			</tr>

			<%
				DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
				String todayDate = dtf.format(LocalDateTime.now());
				session.setAttribute("todayDate", todayDate);
			%> 
			<tr>
				<td>
					<label for="Loan Application Date">Loan Application Date</label>
				</td>
				<td>
					<input type="text" id="loanapplicationdate"
						name="loanapplicationdate" readonly disabled class="loanInfo" value="<%=todayDate %>">
				</td>
			</tr>
			<tr>
				<td>
					<label for="BusinessStruture">BusinessStruture</label>
				</td>
				<td>

					<input type="radio" id="Individual" name="BusinessStruture"
						value="Individual" class="loanInfo" required> <label for="Individual">Individual</label>
					<input type="radio" id="Organisation" name="BusinessStruture"
						value="Organisation" class="loanInfo" required> <label for="Organisation">Organisation</label>

				</td>
			</tr>

			<tr>
				<td>
					<label for="BillingIndicator">BillingIndicator</label>
				</td>
				<td>
					<input type="radio" id="Salaried Person" name="BillingIndicator"
						value="Salaried Person" class="loanInfo" required> <label
						for="Salaried Person">Salaried Person</label> <input type="radio"
						id="Non Salaried Person" name="BillingIndicator"
						value="Non Salaried Person" class="loanInfo" required> <label
						for="Non Salaried Person">Non Salaried Person</label>
				</td>
			</tr>
			<tr>
				<td>
					<label for="Address">Address</label>
				</td>
				<td>
					<Textarea id="address" name="address" class="loanInfo" required></Textarea>
				</td>
			</tr>

			<tr>
				<td>
					<label for="Mobile">Mobile</label>
				</td>
				<td>
					<input type="tel" id="mobile" name="mobile" class="loanInfo" required pattern="[1-9]{1}[0-9]{9}">
				</td>
			</tr>

			<tr>
				<td>
					<label for="Email">Email</label>
				</td>
				<td>
					<input type="email" id="email" name="email" class="loanInfo" required>
				</td>
			</tr>
			</tbody>
			</table>
			<br>

			<input type="submit" value="Submit">
			</form>
		</div><br>
		<div align="center"><a href="userhome1.jsp"><input type="button" name="navigateback" value="Navigate Back"></a></div>
		
	
	  <% } else { 
		
		String state = request.getAttribute("state").toString();

		if(state.equalsIgnoreCase("submitted"))
		{
			LoanInfo loanData =	(LoanInfo) request.getAttribute("loanDetails");
			String applicationID = loanData.getApplno();
		
		%>
		<div align="center">
			<h4>Loan details submitted successfully !!</h4>
			<h4>Your Application Id is : <%=applicationID %></h4>
		</div>
		<% }
		else
		{ %>
		<div align="center">
			<h4>Loan details submission is unsuccessful !!</h4>
		</div>
	<% } %>
		
		<div align="center"><a href="userhome1.jsp"><input type="button" name="navigateback" class="loanInfo" value="Navigate Back"></a></div>
	<!--  <a href="userhome1.jsp">Navigate Back</a>-->
	<% } %>
	
	
	
	<jsp:include page="footer.jsp" />


</body>
</html>