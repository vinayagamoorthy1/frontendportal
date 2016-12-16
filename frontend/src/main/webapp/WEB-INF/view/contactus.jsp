<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="mycart">MYCART</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">CONTACT US</a></li>
       </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</style>
</head>
<body>
 <font color="blue"> HOME &nbsp &nbsp HELP CENTER  &nbsp &nbsp CUSTOMER CARE &nbsp &nbsp</font>
 <div class="row">
 <li><a style="text-decoration:none" href=""><h2><div class="form-group  col-sm-offset-4 col-sm-4"> &nbsp &nbspHOW CAN I HELP YOU</div></h2></a></li></div>
     <center>
 <center><img  src="<c:url value="/images/contact.jpg"/>"  width="300" height ="300"/></center>
 <font color="green"> Email id:www.mycart.co.in  &nbsp &nbsp www.mycart.co.uk</p></font>
 </align>
 <marquee bgcolor="#000000"><font color="#00FF00">Phone:044-235744 8489636998t</font></marquee>
</body>
</html>