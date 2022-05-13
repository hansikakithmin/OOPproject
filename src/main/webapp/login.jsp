<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {background-color : powderblue;}
form{
background-color:skyblue;
width:500px;
padding:20px;
margin:auto;
}
table{
width:500px;
padding:20px;
margin:auto;
font-size:20px;
}
input[type=text]{
width:100%;
padding:5px;
font-size:16px;
}
input[type=submit]{
background-color:lightblue;
font-size:16px;
}
</style>
</head>
<body align="center">

<h1>Check Order</h1><br><br><br><br><br>
	<form action="login" method="post">
	<table align="center">
	<tr>
		<td>Name</td>
		<td> <input type="text" name="name" placeholder="Enter your name"></td>
	</tr>
	<tr>
		<td>Email</td> 
		<td><input type="text" name="email" placeholder="Enter your email"></td>
		</table><br><br>
		<input type="submit" name="submit" value="check order">
	</form>
	
</body>
</html>