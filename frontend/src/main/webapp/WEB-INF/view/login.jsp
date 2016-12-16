<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<title>log in</title>
</style>
</head>
  <form action="hello.html" method="post"> 
  <div class="row">
 
    <div class="form-group  col-sm-offset-4 col-sm-4">
    
      <label for="usr">Name:</label>
      <input type="text" name="userID" class="form-control " id="usr" required="true">
    </div>
    </div>
    
    <div class="row">
    <div class="form-group col-sm-offset-4 col-sm-4">
     
      <label for="pwd">Password:</label>
      <input type="password" name="Password" class="form-control" id="pwd" required="true">
    </div>
    </div>
    <div class="row">
<div class="col-sm-offset-4">
   <input type="submit" class=" col-md-2 btn btn-success" value="LOGIN"/> 

   <div class="col-sm-offset-4"></div></div>
     <input type="submit" class="  col-md-2 btn btn-danger" value="FORGOTPASSWORD"/> 
     </div></div>
     <br>
     <br><br><br><br><br><br><br><br>
    <div class="panel panel-primary">
      <div class="panel-heading">
&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp &nbsp 
&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp &nbsp  &nbsp  &nbsp  &nbsp &nbsp  &nbsp  &nbsp  &nbsp&nbsp&nbsp 
We no longer support login via Social accounts. To recover your old accounts please click here</div>
     </div>
    </form>
   
    </body>
  </html>