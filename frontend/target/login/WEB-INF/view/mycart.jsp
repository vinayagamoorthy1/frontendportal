<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script></head>
<body>
<c:set var="mycartproduct" scope="application" value="${itemaddedtothecart}"></c:set>
<table class="table">
<tr>
<th>cartId</th><th>Product Name</th><th>Product Price</th><th>Product_Id</th><th>User Id</th><th>Quantity</th><th>Total Amount</th></tr>
<tr><td>${mycartproduct.id}</td><td>${mycartproduct.product_name}</td><td>${mycartproduct.price}</td><td>${mycartproduct.product_id}</td><td>${mycartproduct.user}</td><td>${mycartproduct.quantity}</td>
<td>${mycartproduct.quantity*mycartproduct.price}</td></tr>
</table>
</body>
</html>