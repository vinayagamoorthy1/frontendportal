<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.btn{margin-right:20px;}
h3{margin-top:100px;}
</style>
</head>
<body>
<form:form action="product1" method="post" commandName="product"  enctype="multipart/form-data">
<div class="row">
<div class="form-group col-xs-offset-4 col-xs-3">
<h3 class="text-primary col-xs-offset-2">product Details</h3>
<form:input type="text" class="form-control" placeholder="enter product id" path="id" id="a" required="true" onblur="idcheck()"/>
<p id="b" class="text-warning small col-xs-offset-1"></p></div></div>
<div class="row">
<div class="form-group col-xs-offset-4 col-xs-3">
<form:input type="text" class="form-control" placeholder="enter product name" path="name" id="a1" required="true" onblur="namecheck()" />
<p id="b1" class="text-warning small col-xs-offset-1"></p></div></div>
<div class="row">
<div class="form-group col-xs-offset-4 col-xs-3">
<form:textarea  class="form-control" row="9" placeholder="enter the product  price" id="a3" path="price" required="true" onblur="adrscheck()" />
<p id="b3" class="text-warning small col-xs-offset-1"></p></div></div>
<div class="row">
<div class="form-group col-xs-offset-4 col-xs-3">
<form:textarea  class="form-control" row="9" placeholder="enter category_id" id="a4" path="category_id" required="true" onblur="adrscheck()" />
<p id="b4" class="text-warning small col-xs-offset-1"></p></div></div>
<div class="row">
<div class="form-group col-xs-offset-4 col-xs-3">
<form:textarea  class="form-control" row="9" placeholder="enter supplier_id" id="a4" path="supplier_id" required="true" onblur="adrscheck()" />
<p id="b4" class="text-warning small col-xs-offset-1"></p></div></div>
<div class="row">
<div class="form-group col-xs-offset-4 col-xs-3">
<input type="file" path="image" name="image" >
</div>
<div class="row">
<form:button  type="submit" class=" col-xs-offset-4 col-xs-1 btn btn-primary" >Add</form:button>

<form:button  type="button" class=" col-xs-1 btn btn-success" >Update</form:button>

<form:button  type="button" class=" col-xs-1 btn btn-warning" >Delete</form:button>
</div>
</form:form>
</body>
</html>