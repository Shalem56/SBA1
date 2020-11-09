<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/homePage.css" />
<title>Insert title here</title>
</head>
<body>
	<!-- write html code to read the application number and send to usercontrollers'
             displaystatus method for displaying the information
	-->
	
	<jsp:include page="header.jsp"/>
	<form action="user?action=trackloan" method="POST">
	<div align="center">
				<div>
					<label for="Application Number" style="font-size: 31px; font-weight: bold;">Enter your application number</label>
				</div>
				<div>
					<input type="text" id="applicationnumber" name="applicationnumber" required placeholder="Enter your application number">
				</div>
				<br>
				
				<div>
					<input type="submit" id="trackapplication" name="trackapplication" value="Track"><br><br>
				</div>
	</div>
	</form>
	<br>
	
	<div align="center">
		<a href="userhome1.jsp"><input type="button" name="navigateback" value="Navigate Back"></a>
	</div>
	<!--  <a href="userhome1.jsp"><input type="button" name="home" value="Home"></a>-->
	<jsp:include page="footer.jsp"/>
	

</body>
</html>