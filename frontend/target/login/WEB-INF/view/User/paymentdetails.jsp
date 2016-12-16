<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h3 class= "col-xs-offset-3 text-success" style="margin-top:200px;">Choose your Payment Mode</h3>
<form:form commandName="paymentmode" >
<input type="hidden" value="cod" path="paymentmethod" readonly="true"/>
<a href="${flowExecutionUrl}&_eventId=cancel" class=" col-xs-offset-1 btn btn-danger">cancel</a>
<input type="submit"name="_eventId_cod" value="cod" class=" col-xs-offset-3 btn btn-info">
<input type="hidden" value="cod" path="paymentmethod" readonly="true"/>
<input type="submit"name="_eventId_netbanking" value="netbanking" class="col-xs-offset-1 btn btn-info">
<a href="${flowExecutionUrl}&_eventId=back" class=" col-xs-offset-1 btn btn-primary">back</a>
</form:form>
</body>
</html>