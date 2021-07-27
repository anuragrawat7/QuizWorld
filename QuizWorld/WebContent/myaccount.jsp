<%@ page language="java" import="java.util.*,Usersdao.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>My Account</title>
	<link rel="stylesheet" href="myaccount.css">
	<link rel="stylesheet" href="bootstrap 4/css/bootstrap.min.css">
	<script src="bootstrap 4/js/jquery.min.js"></script> 
    <script src="bootstrap 4/js/bootstrap.min.js"></script>
    <script src='bootstrap 4/js/fontawesome.js'></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 
    <!-- FONTS -->
  	<link href='https://fonts.googleapis.com/css?family=Audiowide' rel='stylesheet'>
  	<link href="https://fonts.googleapis.com/css?family=Hepta+Slab&display=swap" rel="stylesheet">
</head>
<body>
	<%
	String name = (String) session.getAttribute("name");
	if(name==null){
		response.sendRedirect("loginpage.jsp");
	} 
	%>
	<!-- Nav Bar -->
	<nav class="navbar navbar-expand-sm sticky-top">
		<a class = "nav-brand nav-link" id = "brand" href = "index.jsp">Quiz  World</a>
		<button class="navbar-toggler navbar-dark" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" 
		aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  	</button>
	  	<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class = "navbar-nav ml-auto">
				<li class = "mt-2 text-uppercase" style = "color : yellow;">
				<p><% out.print("Welcome ,  "+name);  %></p></li>
				<li><a class="nav-link" href="logout.jsp" id="logout"> Logout 
				<i class="fa fa-sign-out" aria-hidden="true"></i></a></li>
			</ul>
		</div>
	</nav>
			<!-- Nav Bar -->
	<%
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/QuizWorld","root","");
		PreparedStatement ps=con.prepareStatement("Select * from userinfo where username=?");  
		ps.setString(1,name);  
		ResultSet rs=ps.executeQuery(); 
		while(rs.next()){
			String username = rs.getString(1);
			String email = rs.getString(2);
			System.out.println(username + email);
	%>
	<div class = "container" id = "details">
		<table class = "table">
			<tr><th> <p class = "heading"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i> Account details</p></th>
			<th><a class = "btn btn-warning" style = "float:right;" href = "homepage.jsp">Return to Home page</a></th></tr>
			<tr><td> User name </td> <td> <%= username %> </td></tr>
			<tr><td> Email Id </td> <td>  <%= email %> </td></tr>
			<tr><th><p class = "heading"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i> Previous results</p></th></tr>
		</table>
		<div class="table-responsive-sm">
			<table class="table">
			<tr><th> S no. </th> <th>  Quiz Name </th> <th>Total Score</th></tr>
		<% 
		int sno = 0;
		PreparedStatement ps1=con.prepareStatement("Select * from usersdata where username=?");  
		ps1.setString(1,name);  
		ResultSet rs1 = ps1.executeQuery(); 
		if(rs1.next()){
			while(rs1.next()){ 
				sno++;
				String quizname1 = rs1.getString(2);
				String totalmarks = rs1.getString(3);
				%>
					<tr><td><%= sno %></td><td><%= quizname1 %></td><td><%= totalmarks %></td></tr>
				<%
				}
			}
			else{
				%>
					<tr><td> No  Record found!</td></tr>		
		<%
			}
		}
		con.close();
	}
	catch(Exception e){
		e.printStackTrace();
	}
	%>
	</table>	
		</div>	
	</div> 
	<!-- Footer -->
	<footer class="page-footer font-large blue-grey" style="font-size:14px;">
	  <div style="background-color: #2DBCDF;">
	    <div class="container">
	      <div class="row py-4 d-flex align-items-center">
	        <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
	          <h6 class="mb-0">Get connected with us on social networks!</h6>
	        </div>
	        <div class="col-md-6 col-lg-7 text-center text-md-right">
	          <a class="fb-ic mr-3" role="button"><i class="fab fa-lg fa-facebook-f"></i></a>
	          <a class="tw-ic mr-3" role="button"><i class="fab fa-lg fa-twitter"></i></a>
	          <a class="ins-ic mr-3" role="button"><i class="fab fa-lg fa-instagram"></i></a>
	        </div>      
	      </div>
	    </div>
	  </div>
	   	<div class="container-fluid text-center text-white bg-dark text-md-left">
	    	<div class="row">
	      		<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-2">
	        		<h6 class="text-uppercase font-weight-bold mt-4 mb-3">Category</h6>
	        		<p><a class="dark-grey-text" href="generalquiz.jsp">General Quiz</a> </p>
	        		<p><a class="dark-grey-text" href="sciencequiz.jsp">Science Quiz</a></p>
	        		<p><a class="dark-grey-text" href="itquiz.jsp">Information Quiz</a></p>
	        		<p><a class="dark-grey-text" href="sportsquiz.jsp">Sports Quiz</a></p>
	     		</div>
	      		<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-2">
	       			<h6 class="text-uppercase font-weight-bold mt-4 mb-3">Contact</h6>
	       			<p><i class="fas fa-home mr-3"></i> Delhi, India</p>
	        		<p><i class="fas fa-envelope mr-3"></i> info@quizworld.com</p>
	        		<p><i class="fas fa-phone mr-3"></i> +91 989****219(demo)</p>
	      		</div>
	    	</div>
	   	</div>
	  <div class="footer-copyright text-center bg-dark text-white py-1">© 2019 Copyright - 
	    <a class="dark-grey-text" href="https://mdbootstrap.com/education/bootstrap/"> QuizWorld.com</a>
	  </div>
	</footer>
			<!-- Footer -->
</body>
</html>