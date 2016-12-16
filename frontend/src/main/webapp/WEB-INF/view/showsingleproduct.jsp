<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>&nbsp &nbsp &nbsp &nbsp
<body> <div class="form-group  col-sm-offset-4 col-sm-4">
<img  src=<c:url value="/images/${productdescription.id }.jpg"/> width="250" height ="250"/><br>
PRODUCT ID:${productdescription.id }<br>
PRODUCT NAME:${productdescription.name }<br>
PRODUCT PRICE:${productdescription.price }<br>
  <div class="col-sm-offset-0">
 <input type="submit" class=" col-md-5 btn btn-success" value="ADDTOCART" >
 <a href= "cart_checkout"><input type="submit" class=" col-md-5 btn btn-success" value="PROCEED"> </a></div>

</body>
</html>