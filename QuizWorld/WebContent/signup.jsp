<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%try{
	String username = request.getParameter("username");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	boolean app = false;
	out.print(" <script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
	out.print("<script src='bootstrap 4/js/jquery.min.js'></script> ");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/QuizWorld","root","");
	PreparedStatement ps=con.prepareStatement("Select * from userinfo where username=?;");
	ps.setString(1,username);
	ResultSet rs=ps.executeQuery(); 
	app = rs.next();  
	if(app){	
		out.print("<script>");
		out.print("$(document).ready(function(){");
		out.print("swal('Warning!','Username is already exist.','error');");
		out.print("setInterval(() => { location.href='loginpage.jsp'; }, 1500);");
		out.print("});</script>"); 
	}
	else if(username == " " || email == " " || password == " "){
		out.print("<script>");
		out.print("$(document).ready(function(){");
		out.print("swal('Warning!','Enter Something!!!','error');");
		out.print("setInterval(() => { location.href='loginpage.jsp'; }, 1500);");
		out.print("});</script>"); 
	}
	else{
	PreparedStatement stmt = con.prepareStatement("Insert into userinfo(username,Email,Password) values(?,?,?)");
	stmt.setString(1,username);
	stmt.setString(2,email);
	stmt.setString(3,password);
	stmt.executeUpdate();
	session.setAttribute("name",username); 
	out.print("<script>");
	out.print("$(document).ready(function(){");
	out.print("swal('Welcome','Registered Successfully','success');");
	out.print("setInterval(() => { location.href='homepage.jsp'; }, 1500);");
	out.print("});</script>");
	con.close();
	}
}catch(Exception e2){
e2.printStackTrace();
}
%>