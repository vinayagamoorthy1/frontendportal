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

<h2 class="text-primary col-xs-offset-4" style="margin-top:180px;">Your Order Details</h2>
<c:if test="${empty listofnewcart}">
<table class="table table-bordered" style="margin-top:50px;margin-bottom:30px;">
<tr class="bg-info">
<th>Product Details</th><th>Shipping Address</th><th>Price</th><th>Quantity</th><th>Total Amount</th>
</tr>
<tr class="info">
<td><pre>
Product Id:${product.id}
Product Name:${product.name}
</pre>
</td>
<td>
<pre>
${shippingAddress.name},
${shippingAddress.doorno},
${shippingAddress.street},
${shippingAddress.city},
${shippingAddress.pincode},
${shippingAddress.country}.
</pre>
</td>
<td>${product.price}</td>
<td>${quantity}</td>
<td>${product.price*quantity}</td>
</tr>
</table></c:if>
<c:if test="${not empty listofnewcart}" >
<table class="table table-bordered" style="margin-top:50px;margin-bottom:30px;">
<tr class="bg-info">
<th>Product Names</th><th>Price</th><th>Quantity</th><th>Shipping Address</th><th>Total Amount</th>
</tr>
<tr class="info">
<td>
<c:forEach items="${listofnewcart}" var="productname">
<pre>${productname.product_name}</pre>
</c:forEach></td>
<td><c:forEach items="${listofnewcart}" var="productname">
<pre>${productname.price}</pre>
</c:forEach></td>
<td><c:forEach items="${listofnewcart}" var="productname">
<pre>${productname.quantity}</pre>
</c:forEach></td>
<td>
<pre>
${shippingAddress.name},
${shippingAddress.doorno},
${shippingAddress.street},
${shippingAddress.city},
${shippingAddress.pincode},
${shippingAddress.country}.
</pre>
</td>
<td><c:forEach items="${listofnewcart}" var="productname">
<pre>${productname.price*productname.quantity}</pre>
</c:forEach></td>
</tr>
<tr>
<td  colspan="4"class="text-center">Total Amount</td><td>${total}</td>
</tr>
</table>
</c:if>
<a href="${flowExecutionUrl}&_eventId=back" class="col-xs-offset-4 btn btn-info">back</a> 
<a href="${flowExecutionUrl}&_eventId=confirm" class="btn btn-success">Place Order</a>
<a href="${flowExecutionUrl}&_eventId=cancel" class="btn btn-danger">cancel</a>
</body>
</html>