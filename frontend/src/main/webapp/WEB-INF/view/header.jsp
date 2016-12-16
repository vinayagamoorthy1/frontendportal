<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>LOG IN PAGE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .navbar{background-color:yellow!important;margin-top:20px;}
  .navbar {min-height: 20px;}
.navbar-brand {padding: 0 15px; height: 40px; line-height: 40px;}
  </style>
</head>
<body>



<nav class="navbar navbar-default">
<div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
      
    </div>
    
    <ul class="nav navbar-nav">
      <li class="active">
      <a href="mycart">HOME</a></li>
      <li><a href="register">SIGNUP</a></li>
      <li><a href="Aboutus">ABOUTUS</a></li>
      <li><a href="contactus">CONTACTUS</a></li>   
  <c:if test="${v eq 2 }">
            <li><a href="category">CATEGORY</a></li>
      <li><a href="Product">PRODUCT</a></li>
       <li><a href="supplier">SUPPLIER</a></li></c:if>
      </ul>
    <ul class="nav navbar-nav navbar-right">
    <c:if test="${v eq 1 }">
   <li><a href="mycart"> <span
    class="glyphicon glyphicon-My-cart"> Mycart</span></a></li>
    <li><a href="log"><span
    class="glyphicon glyphicon-log-out">Logout</span></a></li>
    </c:if>
  
    <c:if test="${v eq 0}"><li><a href="login"><span class="glyphicon glyphicon-log-in">Login</span></a></li></c:if>
  </ul>
      <ul class="nav navbar-nav navbar-right">
       <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
   </ul>
   
     </nav>
     <c:if test="${car ne true }">
 
     
     <ul class="nav nav-tabs" role="tablist">
     <c:forEach items="${categoryList}" var="category">
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">${category.name}<span class="caret"></span>
    </a> 
    
    <ul class="dropdown-menu">
    <c:forEach items="${category.products}" var="pro">
   <li> hi</li>
       <a  id="padfora" href="product/${pro.id}"><li>${pro.name}</li></a>
       <li class="divider"></li>
     </c:forEach>
    </ul> 
    </li>
     </c:forEach>
     </ul>
    </c:if>
   <center> <h2>WELCOM TO MYCART</h2></center>
    <c:if test="${ car }">
   <jsp:include page="carosal.jsp"></jsp:include>
  </c:if>
  
  
  </body>
</html>
 