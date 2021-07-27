<%@ page language="java" import="java.util.*,Usersdao.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Test</title>
	<link rel="stylesheet" href="fetchquiz.css">
	<link rel="stylesheet" href="bootstrap 4/css/bootstrap.min.css">
	<script src="bootstrap 4/js/jquery.min.js"></script> 
    <script src="bootstrap 4/js/bootstrap.min.js"></script>
    <script src='bootstrap 4/js/fontawesome.js'></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   <!--  <link href="https://fonts.googleapis.com/css?family=Playfair+Display|Slabo+27px&display=swap" rel="stylesheet"> -->
   <link href="https://fonts.googleapis.com/css?family=Hind+Guntur&display=swap" rel="stylesheet">
    <style>
    	
    </style>
</head>
<body>
<%
	String quizname=(String)session.getAttribute("quizname");
	String name = (String) session.getAttribute("name");
	if(name==null){
		response.sendRedirect("loginpage.jsp");
	}  
	%>
	
	<!-- Nav Bar -->
	<nav class="navbar navbar-expand-sm">
		<a class = "nav-brand nav-link" id = "brand" href = "index.jsp">Quiz  World</a>
	  	<div class="navbar-collapse" id="navbarSupportedContent">
		    <ul class = "navbar-nav ml-auto">
					<li class = "mt-2 text-uppercase" style = "color : yellow;"><p><% 
					out.print("Welcome, "+name);  
					%></p></li>
					<li><a class="nav-link bg-danger" href="homepage.jsp" id="logout">Exit</a>
					</li>
			</ul>
		</div>
	</nav>
			<!-- Nav Bar -->
	<div class = "container">
		<div class = "row" >	
			<div class = "col-sm-4 sticky-top" id = "serialno">
				<div class = "row">
					<marquee>* Don't refresh the page *</marquee>
					<span class = "col-sm-2" id = "q1"><a href = "#question1">1</a></span>
					<span class = "col-sm-2" id = "q2"><a href = "#question2">2</a></span>
					<span class = "col-sm-2" id = "q3"><a href = "#question3">3</a></span>
					<span class = "col-sm-2" id = "q4"><a href = "#question4">4</a></span>
					<span class = "col-sm-2" id = "q5"><a href = "#question5">5</a></span>
					<span class = "col-sm-2" id = "q6"><a href = "#question6">6</a></span>
					<span class = "col-sm-2" id = "q7"><a href = "#question7">7</a></span>
					<span class = "col-sm-2" id = "q8"><a href = "#question8">8</a></span>
					<span class = "col-sm-2" id = "q9"><a href = "#question9">9</a></span>
					<span class = "col-sm-2" id = "q10"><a href = "#question10">10</a></span>
					<span class = "col-sm-2" id = "q11"><a href = "#question11">11</a></span>
					<span class = "col-sm-2" id = "q12"><a href = "#question12">12</a></span>
					<span class = "col-sm-2" id = "q13"><a href = "#question13">13</a></span>
					<span class = "col-sm-2" id = "q14"><a href = "#question14">14</a></span>
					<span class = "col-sm-2" id = "q15"><a href = "#question15">15</a></span>
				</div>
			</div>	
			<div class = "col-sm-7" id = "question">
				<form action="showresults.jsp" method="post">
					<table class = "table">	
	<%
	int i = 1;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/QuizWorld","root","");
		PreparedStatement ps = con.prepareStatement("select * from questionbank where quizname=? order by rand() LIMIT 15");
		/* order by rand() */
		ps.setString(1, quizname);
		ResultSet rs1 = ps.executeQuery();
		while(rs1.next()){
			String question = rs1.getString(1);
			String option1 = rs1.getString(2);
			String option2 = rs1.getString(3);
			String option3 = rs1.getString(4);
			String option4 = rs1.getString(5);
			String qid = rs1.getString(8);
		%>
						<tr><th class = "bg-dark text-white" id = "question<%=i%>" style = "font-size : 20px;"><strong>Question <%=  i %> : </strong><%= question %></th></tr>
						<tr><td><input type="radio" onclick = "change()" name="radio<%=i%>" value="<%= option1 %>"/><%= option1 %></td></tr>	
						<tr><td><input type="radio" onclick = "change()" name="radio<%=i%>" value="<%= option2 %>"/><%= option2 %></td></tr>	
						<tr><td><input type="radio" onclick = "change()" name="radio<%=i%>" value="<%= option3 %>"/><%= option3 %></td></tr>	
						<tr><td><input type="radio" onclick = "change()" name="radio<%=i%>" value="<%= option4 %>"/><%= option4 %></td></tr>
						<input type = "hidden" name = "qid<%=i%>" value = "<%= qid %>"></input>			
			             <% i++;
			             } %>
			      	 <tr class = "text-center"><td><input type="submit" class = "btn btn-lg btn-primary text-center" value="Submit"/></td></tr>
					</table>
				</form>
			</div>
		</div>
	</div>
<%
	con.close();
	}
	catch(Exception ex){
			System.out.print("Message : " + ex);
			}
%> 
<!-- Footer -->
<footer class="page-footer font-large" style="font-size:16px;">
  <div style="background-color: #2DBCDF;">
    <div class="container">
      <div class="row py-4 d-flex align-items-center">
        <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
          <h6 class="mb-0">Get connected with us on social networks!</h6>
        </div>
        <div class="col-md-6 col-lg-7 text-center text-md-right" style = "back">
          <a class="fb-ic mr-3" href = "https://www.facebook.com/Anurag.Rawat007" target = "_blank"><i class="fab fa-lg fa-facebook-f"></i></a>
          <a class="tw-ic mr-3" href = "https://twitter.com/im_ar7" target = "_blank"><i class="fab fa-lg fa-twitter"></i></a>
          <a class="ins-ic" href = "https://www.instagram.com/anuragrawat_7/" target = "_blank"><i class="fab fa-lg fa-instagram"></i></a>
        </div>      
      </div>
    </div>
  </div>
  <div>
</footer>
		<!-- Footer -->
	<script>
    function change(){
    	var radios = document.getElementsByName("radio1");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q1").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	var radios = document.getElementsByName("radio2");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q2").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	var radios = document.getElementsByName("radio3");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q3").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	var radios = document.getElementsByName("radio4");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q4").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	var radios = document.getElementsByName("radio5");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q5").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	var radios = document.getElementsByName("radio6");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q6").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	var radios = document.getElementsByName("radio7");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q7").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	var radios = document.getElementsByName("radio8");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q8").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	var radios = document.getElementsByName("radio9");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q9").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	var radios = document.getElementsByName("radio10");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q10").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	var radios = document.getElementsByName("radio11");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q11").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	var radios = document.getElementsByName("radio12");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q12").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	var radios = document.getElementsByName("radio13");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q13").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	var radios = document.getElementsByName("radio14");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q14").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	var radios = document.getElementsByName("radio15");
    	for(var i = 0; i < radios.length; i++) {
    		if(radios[i].checked) {
    			document.getElementById("q15").style.cssText = 'background-color: #3AD83A'
  			  } 
    	}	
    	
    }
    </script>
</body>
</html>