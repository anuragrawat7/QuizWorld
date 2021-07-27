<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="-1">
</head>
<%
	String name = (String) session.getAttribute("name");
	if(name==null){
	response.sendRedirect("loginpage.jsp");
	} 
	out.print(" <script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
	out.print("<script src='bootstrap 4/js/jquery.min.js'></script> ");
	session.invalidate();
	response.setHeader("Cache-Control","no-store"); 
	response.setHeader("Pragma","no-cache"); 
	response.setDateHeader ("Expires", 0);
	out.print("<script>");
	out.print("$(document).ready(function(){");
	out.print("swal('Wait','Logout Successfully','success');");
	out.print("setInterval(() => { location.href='loginpage.jsp'; }, 1500);");
	out.print("});</script>");
%>
</html>