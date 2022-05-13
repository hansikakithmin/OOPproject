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
<body>

 <%
      String id = request.getParameter("id");
      String name = request.getParameter("name");
      String email = request.getParameter("email");
      String phone = request.getParameter("phone");
      String items = request.getParameter("items");
      String amount = request.getParameter("amount");
    %>
    
    <h1>Payment Delete</h1><br><br><br><br><br>
    
     <form action="delete" method = "post">
     <table>
       <tr>
       <td>Customer ID</td> 
       <td><input type="text" name="cusid" value="<%=id %>" readonly></td>
       </tr>
       <tr>
       <td>Name</td>
       <td> <input type="text" name="name" value="<%=name %>"readonly></td>
       </tr>
       <tr>
       <td>Email</td>
       <td><input type="text" name="email" value="<%=email %>"readonly></td>
       </tr>
       <tr>
       <td>Phone Number</td>
       <td><input type="text" name="phone" value="<%=phone %>"readonly></td>
       </tr>
       <tr>
       <td>Items</td>
       <td><input type="text" name="items" value="<%=items %>"readonly></td>
       </tr>
       </table>
       <input type="submit" name="submit" value="delete"><br>
     </form>

</body>
</html>