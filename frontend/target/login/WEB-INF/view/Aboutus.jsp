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
  <style>
  .navbar{background-color:yellow!important;margin-top:20px;}
  .navbar {min-height: 20px;}
.navbar-brand {padding: 0 15px; height: 40px; line-height: 40px;}
  </style>
</head>
<nav class="navbar navbar-default">
<div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      <li><a href="log"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li> 
    </ul>
      </nav>
<body >
<style>
body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
    text-align:center;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s

}

.sidenav a:hover{
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  
  <a href="#">services</a>
  <a href="#">Clients</a>
  <a href="#">Contact</a>
</div>
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span>

<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "100%";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>

<center><h2>ABOUT US</h2></center>
<center><img  src="<c:url value="/images/gg.jpg"/>"  width="300" height ="300"/></center>
<br>
It is an B2C marketplace, based in New Delhi, India. The company was started by Kunal Bahl, a Wharton graduate as part of the dual degree M&T Engineering and Business program at Penn, and Rohit Bansal, an alumnus of IIT Delhi in February 2010. 
It currently has 275,000 sellers, over 30 million products and a reach of 6,000 towns and cities across the country.
Investors in the company include SoftBank Corp, Ru-Net Holdings, Tybourne Capital, PremjiInvest, Alibaba Group, Temasek Holdings, Bessemer Venture Partners, IndoUS Ventures, Kalaari Capital, Saama Capital, Foxconn Technology Group, Blackrock, eBay, Nexus Ventures, Intel Capital, Ontario Teachers' Pension Plan, Singapore-based investment entity Brother Fortune Apparel and Ratan Tata. 
When it acquired FreeCharge in an equity deal, investors Sequoia Capital India, Valiant Capital, Sofina, Ru-Net Holdings, and Tybourne Capital also became shareholders in this cart.
</body>
</html>