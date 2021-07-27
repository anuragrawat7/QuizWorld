<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Start Quiz</title>
	<link rel="stylesheet" href="startpage.css">
	<link rel="stylesheet" href="bootstrap 4/css/bootstrap.min.css">
	<script src="bootstrap 4/js/jquery.min.js"></script> 
    <script src="bootstrap 4/js/bootstrap.min.js"></script>
    <script src='bootstrap 4/js/fontawesome.js'></script>
    <link href='https://fonts.googleapis.com/css?family=Audiowide' rel='stylesheet'>
    <link href="https://fonts.googleapis.com/css?family=Bree+Serif&display=swap" rel="stylesheet">
</head>
<body>
<%
	String name = (String)session.getAttribute("name");
	if(name==null){
	response.sendRedirect("loginpage.jsp");
	} 
	%>
	<nav class="navbar navbar-expand-sm sticky-top">
	<a class = "nav-brand nav-link" id = "brand" href = "index.jsp">Quiz  World</a>
	<button class="navbar-toggler navbar-dark" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" 
	aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  	</button>
  	<div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class = "navbar-nav ml-auto">
				<li class = "mt-2 text-uppercase" style = "color : yellow;"><p><% 
				out.print("Welcome, "+name);  
				%></p></li>
				<li><a class = "nav-link" href = "#" style="color:white;margin-left:12px;"> My Account <i class="fas fa-ellipsis-v fa-sm"></i></a></li>
				<li><a class="nav-link bg-danger" href="logout.jsp" id="logout">Logout</a>
				</li>
			</ul>
	</nav>
	
	<div class = "container" id = "content">
		<h1 class="display-5" style = "color:#2DC847">General Quiz</h1>
		<hr noshade>
		<div class = "row">
			<div class = "col-sm-8">
			</div>
			<div class = "col-sm-4" style=" height : 487px;">
				<div id = "info">
					<ul>
					<li><h4>15</h4><h4>Questions</h4></li>
					<li><h4>30 </h4><h4>Points </h4></li>
					</ul>
				</div>
				<div id = "rule">
					<p><strong>Read the following instruction carefully</strong></p>
					<ul>
						<li><p>Total number of questions : 15 and No time limit so far</p></li>
						<li><p>Marks for each correct answer : 2 marks</p></li>
						<li><p>No negative marking</p></li>
						<li><p>Click on radio button to select your answer</p></li>
						<li><p>DO NOT REFRESH THE PAGE</p></li>
						<li><p>The quiz will start as soon as you click the Start Quiz button.</p></li>
					</ul>
				</div>
				<% session.setAttribute("quizname","generalquiz"); %>
				<a href="fetchquiz.jsp"><button type="button" class="btn btn-primary btn-lg btn-block">
				Play Quiz</button></a>
			</div>
		</div>
		<div id = "about">
			<h2><i class="far fa-arrow-alt-circle-right"></i>  About Quiz</h2><hr noshade align="left" width="25%">
			<p style = "font-size:18px;">General knowledge is information that has been 
			accumulated over time through various mediums. 
			It excludes highly specialized learning that can only be obtained with extensive training and information confined to 
			a single medium. General knowledge is an important component of crystallized intelligence. It is strongly associated 
			with general intelligence and with openness to experience. Studies have found that people who are highly knowledgeable in a 
			particular domain tend to be knowledgeable in many. General knowledge is thought to be supported by long-term semantic
			memory ability. General knowledge also supports schemata for textual understanding. People high in general knowledge 
			tend to be highly open to new experiences and in typical intellectual engagement. The relationship 
			between openness to experience and general knowledge remains robust even when IQ is taken into account. People high 
			in openness may be more motivated to engage in intellectual pursuits that increase their knowledge.</p>
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
    <a class="dark-grey-text" href="index.jsp"> QuizWorld.com</a>
  </div>
</footer>
		<!-- Footer -->
		<!-- Login Modal -->
<form action="Login" method = "POST">
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Log in</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-4">
          <i class="fas fa-user prefix grey-text"></i>
          <label data-error="wrong" data-success="right"> Your Username</label>
          <input type="text" name = "username1" class="form-control validate">
        </div>
        <div class="md-form mb-3">
          <i class="fas fa-lock prefix grey-text"></i>
          <label data-error="wrong" data-success="right"> Your password</label>
          <input type="password" name = "password1" class="form-control validate">
        </div>
      </div>
      <div class="modal-footer d-flex justify-content-center">
        <button class="btn btn-primary">Login</button>
      </div>
    </div>
  </div>
</div>
</form>
		<!-- Login Modal -->
		<!-- SignUp Modal -->
<form action="Signup" method = "POST">
<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Sign Up</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
     <div class="modal-body mx-2">
        <div class="md-form mb-4">
          <i class="fas fa-user prefix grey-text"></i>
          <label data-error="wrong" data-success="right">Your user name</label>
          <input type="text" name = "username" class="form-control validate">
          
        </div>
        <div class="md-form mb-4">
          <i class="fas fa-envelope prefix grey-text"></i>
          <label data-error="wrong" data-success="right"> Your email</label>
          <input type="email" name = "email" class="form-control validate">
          
        </div>

        <div class="md-form mb-3">
          <i class="fas fa-lock prefix grey-text"></i>
          <label data-error="wrong" data-success="right"> Your password</label>
          <input type="password" name = "password" class="form-control validate">
        </div>

      </div>
      <div class="modal-footer d-flex justify-content-center">
        <button class="btn btn-primary">Sign Up</button>
      </div>
    </div>
  </div>
</div>
</form>
		<!-- SignUp Modal -->
</body>
</html>