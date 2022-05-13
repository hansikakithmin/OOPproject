<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
background-color : powderblue;
width:500px;
padding:20px;
margin:auto;
}
form{
background-color:blue;
width:500px;
padding:20px;
margin:auto;
}
table{
background-color:white;
width:500px;
padding:20px;
margin:auto;
font-size:20px;
}
input[type=button]{
background-color:skyblue;
font-size:16px;
}
</style>
</head>
<body>
<h1>Order Details</h1>
<table>
 <c:forEach var="cus" items="${cusDetails}">
    
    <c:set var="id" value="${cus.id}"/>
   <c:set var="name" value="${cus.name}"/>
   <c:set var="email" value="${cus.email}"/>
   <c:set var="phone" value="${cus.phone}"/>
   <c:set var="items" value="${cus.items}"/>
   <c:set var="amount" value="${cus.amount}"/>
    
    
     
     <tr> 
   <td>Customer ID</td> 
   <td>${cus.id}</td>
 </tr>
 <tr>  
   <td>Customer Name</td>
   <td>${cus.name}</td>
 </tr>
 <tr>
   <td>Customer Email</td>
   <td>${cus.email}</td>
 </tr>
 <tr>
   <td>Customer Phone</td> 
   <td>${cus.phone}</td>
 </tr>
 <tr>
 <td>Customer Items</td>
   <td>${cus.items}</td>
 </tr>
 <tr>
   <td>Amount</td>
   <td>${cus.amount}</td>
   
    </c:forEach>
     </table>
     
     <c:url value="updatecustomer.jsp" var="cusupdate">
        <c:param name="id" value="${id}"/>
        <c:param name="name" value="${name}"/>
        <c:param name="email" value="${email}"/>
        <c:param name="phone" value="${phone}"/>       
        <c:param name="items" value="${items}"/>
        <c:param name="amount" value="${amount}"/>      
    </c:url>
    <br>
    
     <a href="${cusupdate}">
      <input type = "button" name="update" value="Update Payment">
      </a>
      
      <br><br>
      <c:url value="deletecustomer.jsp" var="cusdelete">
         <c:param name="id" value="${id}"></c:param>
         <c:param name="name" value="${name}"></c:param>
         <c:param name="email" value="${email}"></c:param>
         <c:param name="items" value="${items}"></c:param>
         <c:param name="amount" value="${amount}"></c:param>
         
    </c:url>
      
       <a href="${cusdelete}">
      <input type="button" name="delete" value="Delete">
      </a>
      
</body>
</html>