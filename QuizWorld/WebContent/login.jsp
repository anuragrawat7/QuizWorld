<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
	String username = request.getParameter("username1");
	String password = request.getParameter("password1");
	boolean status=false;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/QuizWorld","root","");
		PreparedStatement ps=con.prepareStatement("Select * from userinfo where username=? AND Password=?;");  
		ps.setString(1,username);  
		ps.setString(2,password); 
		ResultSet rs=ps.executeQuery(); 
		status=rs.next();  
		out.print(" <script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
		out.print("<script src='bootstrap 4/js/jquery.min.js'></script> ");
		if(status){
			session.setAttribute("name",username);
			out.print("<script>");
			out.print("$(document).ready(function(){");
			out.print("swal('Welcome','Login Successfully','success');");
			out.print("setInterval(() => { location.href='homepage.jsp'; }, 1500);");
			out.print("});</script>"); 
			}
		else{	
			out.print("<script>");
			out.print("$(document).ready(function(){");
			out.print("swal('Warning!','Username or password is wrong','error');");
			out.print("setInterval(() => { location.href='loginpage.jsp'; }, 1500);");
			out.print("});</script>"); 
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
%>