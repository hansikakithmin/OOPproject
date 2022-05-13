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
<h1>Make Order</h1><br><br><br><br><br>
  <form action="insert" method="post">
  <table>
     <tr>
     <td>Name</td>
     <td> <input type="text" name="name"></td>
     </tr>
     <tr>
     <td>Email</td>
     <td><input type="text" name="email"></td>
     </tr>
     <tr>
     <td>Phone Number</td>
     <td><input type="text" name="phone"></td>
     </tr>
     <tr>
     <td>Items</td>
     <td><input type="text" name="items"></td>
     </tr>
     <tr>
     <td>Amount</td>
     <td><input type="text" name="amount"></td>
     </tr>
     </table>
     <input type="submit" name="submit" value="make payment">
     </form>


</body>
</html>