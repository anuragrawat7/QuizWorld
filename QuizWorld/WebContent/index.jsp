<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Quiz World</title>
	<link rel = "stylesheet" href = "welcome.css">
	<link rel="stylesheet" href="bootstrap 4/css/bootstrap.min.css">
	<script src="bootstrap 4/js/jquery.min.js"></script> 
    <script src="bootstrap 4/js/bootstrap.min.js"></script>
	<link href='https://fonts.googleapis.com/css?family=Audiowide' rel='stylesheet'>
	<link href="https://fonts.googleapis.com/css?family=Hepta+Slab&display=swap" rel="stylesheet">
  	<link href="https://fonts.googleapis.com/css2?family=Gentium+Book+Basic&display=swap" rel="stylesheet">
  	<link href="https://fonts.googleapis.com/css2?family=Zen+Tokyo+Zoo&display=swap" rel="stylesheet">
	
</head>
<body>
	<div class = "container">
		<!-- <span class = "t1">WELCOME</span>
		<span class = "t2">TO</span>
		<span class = "t3">QUIZ WORLD</span>
		<a href = "loginpage.jsp" class = "button"><span>START</span></a> --> -->
		<%   
		response.sendRedirect("loginpage.jsp");  
%>  
	</div>	
</body>
</html>