<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Account</title>
<style>
body {
       
	background-image: url('https://image.shutterstock.com/image-photo/double-exposure-graph-rows-coins-260nw-531998662.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}
</style>
</head>
<body>
<style>
form{
	background-color:lime;
	border: solid;
	width: 300px;
	height: 550px;
	border-color: black;
	color: navy;
}
</style>
<center>
	<form action="RegisterAction.jsp">
	First Name:</br>
	<input type="text" name="fn" required="true" > </br></br>
	Last Name:</br>
	<input type="text" name="ln" required="true" > </br></br>
	Email:</br>
	<input type="email" name="em" required="true" > </br></br>
	Password:</br>
	<input type="password" name="pa" required="true" > </br></br>
	Phone No:</br>
	<select name="std">
		<option>+91</option>
		<option>+92</option>
		<option>+420</option>
		<option>+20</option>
		<option>+33</option>
		<option>+49</option>
		<option>+36</option>
		<option>+98</option>
		<option>+39</option>
	</select>
	<input type="text" name="ph" required="true" maxlength="10"> </br></br>
	Gender:</br>
	Male:<input type="radio" name="gn" value="male"> Female:<input type="radio" name="gn" value="female"> Others:<input type="radio" name="gn" value="others"> </br></br>
	Language:</br>
	English: <input type="checkbox" name="lan" value="English"> Hindi: <input type="checkbox" name="lan" value="Hindi"> Telugu: <input type="checkbox" name="lan" value="Telugu"> </br></br>
	Upload CV:
	<input type="file" name="cv"> </br></br>
	
	Upload Photo:
	<input type="file" name="img"> </br></br>
	
	<input type="submit" value="Regiser">
	</form>
</center>

</body>
</html>