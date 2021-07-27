<%@ page language="java" import="java.util.*,Usersdao.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title></title>
	<link rel = "stylesheet" href = "resultstyle.css">
	<link rel="stylesheet" href="bootstrap 4/css/bootstrap.min.css">
	<script src="bootstrap 4/js/jquery.min.js"></script> 
    <script src="bootstrap 4/js/bootstrap.min.js"></script>
    <script src='bootstrap 4/js/fontawesome.js'></script>
    <link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
</head>
<body>
	<%
	String name = (String) session.getAttribute("name");
	String quizname = (String)session.getAttribute("quizname");
	int i = 0;
	int correct = 0;
	int total_marks = 0;
	if(name==null){
		response.sendRedirect("loginpage.jsp");
	} 
	String ans[] = {request.getParameter("radio1"),request.getParameter("radio2"),request.getParameter("radio3"),
				request.getParameter("radio4"),request.getParameter("radio5"),request.getParameter("radio6"),
				request.getParameter("radio7"),request.getParameter("radio8"),request.getParameter("radio9"),
				request.getParameter("radio10"),request.getParameter("radio11"),request.getParameter("radio12"),
				request.getParameter("radio13"),request.getParameter("radio14"),request.getParameter("radio15")};
	
	String qid[] = {request.getParameter("qid1"),request.getParameter("qid2"),request.getParameter("qid3"),
				request.getParameter("qid4"),request.getParameter("qid5"),request.getParameter("qid6"),
				request.getParameter("qid7"),request.getParameter("qid8"),request.getParameter("qid9"),
				request.getParameter("qid10"),request.getParameter("qid11"),request.getParameter("qid12"),
				request.getParameter("qid13"),request.getParameter("qid14"),request.getParameter("qid15")};
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/QuizWorld","root","");
	
	for(i=0;i<qid.length;i++){
		System.out.print(qid[i] + "  ");
		System.out.println(ans[i]);
		System.out.println("----Correct---");
	PreparedStatement ps = con.prepareStatement("select answer from questionbank where quizname=? and qid = ?");
	ps.setString(1,quizname);
	ps.setString(2, qid[i]);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		String answer = rs.getString(1);
		System.out.println(answer);
		if(answer.equals(ans[i])){
			correct += 1;
		}
		}
	}
	System.out.println("Correct : "+correct); 
	total_marks = correct * 2; 
	System.out.println("Total marks : "+ total_marks);
	
	try{
	PreparedStatement ps1 = con.prepareStatement("Insert into usersdata(username,quizname,totalmarks) values(?,?,?)");
	ps1.setString(1,name);
	ps1.setString(2,quizname);
	ps1.setInt(3,total_marks);
	ps1.executeUpdate();
	con.close();
	}
	catch(Exception ex){
		System.out.print("Message : " + ex);
		}
	%>
     
     	<!-- Nav Bar -->
	<nav class="navbar navbar-expand-sm sticky-top">
		<a class = "nav-brand nav-link" id = "brand" href = "index.jsp">Quiz  World</a>
		<button class="navbar-toggler navbar-dark" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" 
		aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    	<span class="navbar-toggler-icon"></span>
  		</button>
	  	<div class="collapse navbar-collapse">
			<ul class = "navbar-nav ml-auto">
				<li class = "mt-2 text-uppercase" style = "color : yellow;"><p><% 
				out.print("Welcome, "+name);  
				%></p></li>
				<li><a class = "nav-link" href = "#" style="color:white;margin-left:12px;"> My Account <i class="fas fa-ellipsis-v fa-sm">
				</i></a></li>
				<li><a class="nav-link bg-danger" href="logout.jsp" style="color:white;border-radius:15px;margin-left:8px;">Logout</a>
				</li>
			</ul>
		</div>
	</nav>
			<!-- Nav Bar -->
	<div class = "container">
	<h1>Quiz Result</h1>
		<table>
			<tr style = "background-color : #3F433E;color:white;text-transform: Uppercase;"><td>Category </td> <td><%= quizname %></td></tr>
			<tr><td>Total questions </td> <td> 15 Questions </td></tr>
			<tr><td>Correct answers </td> <td ><%= correct %></td></tr>
			<tr style = "background-color : #327BE9;color:white;"><td>Marks scored </td> <td> <%= total_marks %> </td></tr>
		</table>
		<div id = "linkbutton">
		<a class = "btn btn-success" href = "myaccount.jsp">Show Previous Results</a> 
		<a class = "btn btn-success" href = "homepage.jsp">Return to Home page</a>
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
  <div class="footer-copyright text-center bg-dark text-white py-1"> © 2019 Copyright - 
    <a class="dark-grey-text" href="index.jsp"> QuizWorld.com</a>
  </div>
</footer>
		<!-- Footer -->
</body>
</html> 