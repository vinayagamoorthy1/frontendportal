<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<h4>List of available Products</h4>
<body style="background-color: #F0E68C">
<c:set var="imagefolder" value="F:\\shoppingcart\\images\\"/>
<table class= " table table-bordered  table table-hover" >
	<tr  class= "SUCCESS" >
 <th align="left">S.No</th>
		<th align="left">id</th>
		<th align="left">name</th>
		<th align="left">price</th>
	   <th align="left">catogory_id</th>
		<th align="left">supplier_id</th>
		<th align="left">Edit</th>
		<th align="left">Delete</th>
	
	</tr>
	 <c:forEach items="${productList}" var="product" varStatus="status"> 
		<td align="left">${status.count}</td>
			<td align="left">${product.id}</td>
			<td align="left">${product.name}</td>
			<td align="left">${product.price}</td>
			<td align="left">${product.category_id}</td>
			<td align="left">${product.product_id}</td>
			<td>
			</td>
			  <td align="left"><a href="editProduct/${product.id}">Edit</a></td>
			<td align="left"><a href="deleteProduct/${product.id}" onclick="return confirm('Are You Sure? Do you Want Delete Product : ${product.name} ?')">Delete</a></td>
	 </c:forEach>
	 </table>

	</body>