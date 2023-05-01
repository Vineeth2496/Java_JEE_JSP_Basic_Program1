<%@page import="java.sql.Connection"%>
<%@page import="com.jspData.Datalogics"%>
<%@page import="com.jspData.Data"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Action</title>
</head>
<body>
<%-- Java Servlet code in Servlet --%>
	<%
	// taking request esand respone from ui page
	String firstname=request.getParameter("fn");
	String lastname=request.getParameter("ln");
	String email=request.getParameter("em");
	String password=request.getParameter("pa");
	String stdcode=request.getParameter("std");
	String phoneno=request.getParameter("ph");
	String gender=request.getParameter("gn");
	String language=request.getParameter("lan");
	String cv=request.getParameter("cv");
	String image=request.getParameter("img");
	
	Data d=new Data();
	d.setFirstname(firstname);
	d.setLatstname(lastname);
	d.setEmail(email);
	d.setPassword(password);
	d.setStdcode(stdcode);
	d.setPhoneno(phoneno);
	d.setGender(gender);
	d.setLanguage(language);
	d.setCv(cv);
	d.setImage(image);
	
	Datalogics s=new Datalogics();
	Connection con=Datalogics.mycon();
	int i=s.register_logic(d);
	out.println("<html>");
	out.println("<center>");
	out.println(con);
	out.println("Your Bank Account is Sucessfully Registered:	"+i);
	out.println("</center>");
	out.println("</html>");
	%>

</body>
</html>