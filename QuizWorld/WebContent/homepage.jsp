<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz World</title>
	<link rel="stylesheet" href="loginpage.css">
	<link rel="stylesheet" href="bootstrap 4/css/bootstrap.min.css">
	<script src="bootstrap 4/js/jquery.min.js"></script> 
    <script src="bootstrap 4/js/bootstrap.min.js"></script>
    <script src='bootstrap 4/js/fontawesome.js'></script>
 
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
	  	<div class="navbar-collapse" id="navbarSupportedContent">
			<ul class = "navbar-nav">
		    	<li class = "nav-item active "><a class = "nav-link text-white" href = "homepage.jsp">Home</a></li>
				<li class = "nav-item"><a class = "nav-link text-white" href = "#category">Category</a></li>
				<li class = "nav-item"><a class = "nav-link text-white" href = "#aboutus">About</a></li>
				<li class = "nav-item"><a class = "nav-link text-white" href = "#contact">Contact</a></li>
			</ul>
			<ul class = "navbar-nav ml-auto">
				<li class = "mt-2 text-uppercase" style = "color : yellow; -webkit-user-select: none;"><p><% 
				out.print("Welcome, "+name);  
				%></p></li>
				<li><a class = "nav-link" href = "myaccount.jsp" style="color:white;margin-left:12px;"> My Account <i class="fas fa-ellipsis-v fa-sm"></i></a></li>
				<li><a class="nav-link" href="logout.jsp" id="logout">Logout</a>
				</li>
			</ul>
		</div>
	</nav>
	
			<!-- Nav Bar -->
			<!-- carousel -->
	<div id="demo" class="carousel slide" data-ride="carousel">
	  <ul class="carousel-indicators">
	    <li data-target="#demo" data-slide-to="0" class="active"></li>
	    <li data-target="#demo" data-slide-to="1"></li>
	    <li data-target="#demo" data-slide-to="2"></li>
	    <li data-target="#demo" data-slide-to="3"></li>
	  </ul>
		<div class="carousel-inner">
			<div class="carousel-item active">
   				<img src="image/generalquiz.png" alt="General quiz" width="100%" height="500">
   			</div>
   	 		<div class="carousel-item">
    			<img src="image/Sciencequiz2.png" alt="Science Quiz" width="100%" height="500">
    		</div>
    		<div class="carousel-item">
				<img src="image/IT quiz.jpg" alt="IT Quiz" width="100%" height="500">
			</div>
    		<div class="carousel-item">
    			<img src="image/sports.jpg" alt="Sports Quiz" width="100%" height="500">
    		</div>
		</div>
	</div>
			<!-- carousel -->
			<!-- Content -->
	<div class = "container" id = "category" style = "-webkit-user-select: none;">
	  	<h1 class="display-5"><img src="image/Q logo.jpg" alt="Q1" style="width:100px; height : 100px;">Category</h1>
	  	<div class = "row">
		  	<div class = "col-sm-6">
			  	<h4>General Quiz</h4> <h5 class = "text-danger">[15 Questions]</h5>
			  	<p>General knowledge is information that has been accumulated over time through various mediums.
			  	 It excludes highly specialized learning that can only be obtained with extensive training and information 
			  	 confined to a single medium.</p>
			  	<a href= "generalquiz.jsp"><button type="button" class="btn-lg btn-warning">Start</button></a>
		  	</div>
		  	<div class = "col-sm-6">
			  	<h4>Science Quiz</h4><h5 class = "text-danger">[15 Questions]</h5>
			  	<p>Science is a systematic enterprise that builds and organizes knowledge in the form of testable 
			  	explanations and predictions about the universe. The earliest roots of science can be traced 
			  	to Ancient Egypt and Mesopotamia in around 3500 to 3000 BCE.</p>
			  	<a href= "sciencequiz.jsp"><button type="button" class="btn-lg btn-warning">Start</button></a>
		  	</div>
		  	<div class = "col-sm-6">
			  	<h4>Information Technology Quiz <h5 class = "text-danger">[15 Questions]</h5>
			  	<p>Information technology is the use of computers to store, retrieve, transmit, and manipulate data,
			  	 or information, often in the context of a business or other enterprise.</p>
			  	<a href= "itquiz.jsp"><button type="button" class="btn-lg btn-warning">Start</button></a>
		  	</div>
		  	<div class = "col-sm-6">
			  	<h4>Sports Quiz</h4><h5 class = "text-danger">[15 Questions]</h5>
			  	<p>Sport (or sports) is all forms of usually competitive physical activity which, through casual or
			  	 organised participation, aim to use, maintain or improve physical ability and skills</p>
			  	 <a href= "sportsquiz.jsp"><button type="button" class="btn-lg btn-warning">Start</button></a>
		  	</div>
	  	</div>
	  </div>
	  <div class = "container" id = "aboutus" style = "-webkit-user-select: none;">
  	<h1 class="display-5"><img src="image/Q logo.jpg" alt="Q2" style="width:100px; height : 100px;">About</h1>
  	<div class = "row">
  		<span class = "col-lg-6" align="center">
			<img src= "image/profile1.jpg" class="rounded" alt="My Profile" width="350" height="250"> 
		</span>
  		<span class = "col-lg-6 about">  
	  		<h4>Anurag Rawat</h4>
	  		<h6 style = "color : gray;">[ Software developer ]</h6>
	  		<hr>
	  		<p>I am graduated in Computer Application. My fields of interest are technology, sports and adventures. 
	  		I have develop this website for learning basis not for commercial basis.</p>
  		 </span>
  	</div>
  </div>
  <div class = "container" id = "contact" style = "-webkit-user-select: none;">
  	<h1 class="display-5"><img src="image/Q logo.jpg" alt="Q3" style="width:100px; height : 100px;">Contact us</h1>
  	<div class = "row">
	  	<span class = "col-lg-8 suggestion">
	  		<form action="/contact.jsp" method = "POST">
   			<label for="fname">Full Name</label>
   			<input type="text" id="fname" name="fullname" placeholder="Your Name.."><br>
	  		<label for="email">Email Id</label>
	  		<input type = "text" id = "email" name = "emailid" placeholder="Your Email-ID"><br>
	  		<label for="subject">Subject</label>
    		<textarea id="subject" name="subject" placeholder="Write something.." style="height:100px"></textarea><br>
    		<input type="submit" value="Submit">
    		</form>
	     </span>
  	</div>
  </div>
	  		<!-- Content -->
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
	  <div>
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