<%@page import="com.iiht.evaluation.eloan.model.LoanInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Loan Details</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/homePage.css" />
</head>
<body>
<jsp:include page="header.jsp"/>

	<%

	String  loanStatus= request.getAttribute("status").toString();
	if(loanStatus.equalsIgnoreCase("Submitted"))
	{
	LoanInfo loanInfo = (LoanInfo) request.getAttribute("loanData");
	
	%>
	<h2 id="welcomeText" align="center"> Edit Loan Details </h2>
<div align="center">
	<form action="user?action=editLoanProcess" method="POST">
		
		<table class="editLoanTable">
		<tbody>
			<tr>
				<td>
					<label for="loanname">Loan Name: </label></td><td><input type="text" id="loanname" value="<%=loanInfo.getPurpose() %>" name="loanname">
				</td>
			</tr>
			<tr>
				<td>
					<label for="loanamount">Loan Amount: </label></td><td><input type="text" id="loanamount" value="<%=loanInfo.getAmtrequest() %>" name="loanamount">
				</td>
			</tr>
				<tr>
				<td>
					<label for="BusinessStruture">BusinessStruture</label>
				</td>
				<td>
					<%String bstru = loanInfo.getBstructure(); %>
					
					<input type="radio" id="Individual" name="BusinessStruture" value="Individual"  <%=bstru.equals("Individual")? "checked" : ""%>> 
					<label for="Individual">Individual</label>
					
					
					<input type="radio" id="Organisation" name="BusinessStruture" value="Organisation"  <%=bstru.equals("Organisation")? "checked" : ""%>>
					 <label for="Organisation">Organisation</label>

				</td>
			</tr>
			
			
			
			
			<tr>
				<td>
					<label for="BillingIndicator">BillingIndicator</label>
				</td>
				<td>
				<%String bind = loanInfo.getBindicator(); %>
					<input type="radio" id="Salaried Person" name="BillingIndicator"
						value="Salaried Person" <%=bind.equals("Salaried Person")? "checked" : ""%>> <label
						for="Salaried Person">Salaried Person</label> <input type="radio"
						id="Non Salaried Person" name="BillingIndicator"
						value="Non Salaried Person" <%=bind.equals("Non Salaried Person")? "checked" : ""%>> <label
						for="Non Salaried Person">Non Salaried Person</label>
				</td>
			</tr>

			

			<tr>
				<td>
					<label for="Address">Address</label>
				</td>
				<td>
					<Textarea id="address" name="address" required><%=loanInfo.getAddress()%></Textarea>
				</td>
			</tr>

			<tr>
				<td>
					<label for="Mobile">Mobile</label>
				</td>
				<td>
					<input type="number" id="mobile" name="mobile" value="<%=loanInfo.getMobile()%>" required>
				</td>
			</tr>

			<tr>
				<td>
					<label for="Email">Email</label>
				</td>
				<td>
					<input type="email" id="email" name="email" value="<%=loanInfo.getEmail()%>" required>
				</td>
			</tr>
			</tbody>
			</table>
			<br>
			<input type="submit" name="updatedetails" value="Update Details">
		
	</form>
	
			</div>	
	<br>
	<% } 
	else { 
		
%>

		<h2>Loan details cannot be edited as Loan-status is in : "<%=loanStatus %>" state.</h2>
		
<%	
	request.removeAttribute("status");	
	} %>
		
		<div align="center"><a href="userhome.jsp"><input type="button" name="home" value="Home"></a></div>
	


<jsp:include page="footer.jsp"/>
</body>
</html>