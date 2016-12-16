<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
${myView}
<h2 class=" col-xs-offset-3 text-primary" style="margin-top:200px;"> Enter your Billing Address</h2>
<h3 class=" col-xs-offset-3 text-warming" id="top"></h3>
<form:form commandName="billingAddress" onsubmit="return valform()">
<div class="row">
<div class="form-group col-xs-offset-3 col-xs-3">
<form:input type="text" class="form-control" path="name" placeholder="enter name" required="true" id="bill_a6" onblur="namecheck()"/>
<p class="small text-danger" id="bill_b6"></p>
</div></div>
<div class="row">
<div class="form-group col-xs-offset-3 col-xs-3">
<form:input type="text" class="form-control" path="doorno" placeholder="enter door no/flat no" required="true" id="bill_a1" onblur="doornocheck()"/>
<p class="small text-danger" id="bill_b1"></p>
</div></div>
<div class="row">
<div class="form-group col-xs-offset-3 col-xs-3">

<form:input type="text" path="street" class="form-control" placeholder="enter street name" required="true" id="bill_a2" onblur="streetcheck()"/>
<p class="small text-danger" id="bill_b2"></p>
</div></div>
<div class="row">
<div class="form-group col-xs-offset-3 col-xs-3">

<form:input type="text" path="city" class="form-control" placeholder="enter city name" required="true" id="bill_a3" onblur="citycheck()"/>
<p class="small text-danger" id="bill_b3"></p>
</div></div>
<div class="row">
<div class="form-group col-xs-offset-3 col-xs-3">

<form:input type="text" path="pincode" class="form-control" placeholder="enter pincode" required="true" id="bill_a4" onblur="pincodecheck()"/>
<p class="small text-danger" id="bill_b4"></p>
</div></div>
<div class="row">
<div class="form-group col-xs-offset-3 col-xs-3">
<form:input type="text" path="country" class="form-control" placeholder="enter country name" id="bill_a5" onblur="countrycheck()"/>
<p class="small text-danger" id="bill_b5"></p>
</div></div>
<input type="submit" name="_eventId_submitbillingaddress" class=" col-xs-offset-3 btn btn-info" value="proceed"/>
<a href="${flowExecutionUrl}&_eventId=cancel" class=" col-xs-offset-1 btn btn-info">cancel</a>
<a href="${flowExecutionUrl}&_eventId=back" class=" col-xs-offset-1 btn btn-info">back</a>
</form:form>
<script>
function valform(){
	var fl=doornocheck();
	var fl1= streetcheck();
	var fl3=citycheck();
	var fl4=pincodecheck();
	var fl5=countrycheck();
	var fl6=namecheck();
	if(fl==1){
		document.getElementById("top").innerHTML="fill the necessary fields correctly";
		return false;
	}else if(fl1==1){
		document.getElementById("top").innerHTML="fill the necessary fields correctly";
		return false;
	}else if(fl3==1){
		document.getElementById("top").innerHTML="fill the necessary fields correctly";
		return false;
	}else if(fl4==1){
		document.getElementById("top").innerHTML="fill the necessary fields correctly";
		return false;
	}else if(fl5==1){
		document.getElementById("top").innerHTML="fill the necessary fields correctly";
		return false;
	}else if(fl6==1){
		document.getElementById("top").innerHTML="fill the necessary fields correctly";
		return false;
	}else 
		return true;

}
function doornocheck(){
	var a=document.getElementById('bill_a1').value;
	var fl=0;
	if(a.length=null || a.length==""){//null means undefined/not assigened ,"" no values enterd
		document.getElementById('bill_b1').innerHTML="field  must not be empty";
		fl=1;
	return fl;
	}
	if(a.length>10){
		fl=1;
		document.getElementById('bill_b1').innerHTML="field  must not  be more than 10 characters";
		return fl;
	}if(fl==0){
		document.getElementById('bill_b1').innerHTML="";
return fl;
	}
	}
	function streetcheck(){
		var a=document.getElementById('bill_a2').value;
		var fl=0;
		if(a.length=null || a.length==""){
			document.getElementById('bill_b2').innerHTML="field  must not be empty";
			fl=1;
		return fl;
		}
		if(a.length>20){
			fl=1;
			document.getElementById('bill_b2').innerHTML="field  must not  be more than 20 characters";
			return fl;
		}if(fl==0){
			document.getElementById('bill_b2').innerHTML="";
			return fl;
		}		
	}
	function citycheck(){
		var a=document.getElementById('bill_a3').value;
		var fl=0;
		if(a.length=null || a.length==""){
			document.getElementById('bill_b3').innerHTML="field  must not be empty";
			fl=1;
		return fl;
		}
		if(a.length>20){
			fl=1;
			document.getElementById('bill_b3').innerHTML="field  must not  be more than 20 characters";
			return fl;
		}if(fl==0){
			document.getElementById('bill_b3').innerHTML="";
			return fl;

		}
	}
	function pincodecheck(){
		var a=document.getElementById('bill_a4').value;
		var fl=0;
		if(a.length=null || a.length==""){
			document.getElementById('bill_b4').innerHTML="field  must not be empty";
			fl=1;
		return fl;
		}
		if(a.match(/^\d+$/)==null){
			fl==1
			document.getElementById('bill_b4').innerHTML="field  must have nos only";
return fl;
		}
		if(a.length!=6){
			fl=1;
			document.getElementById('bill_b4').innerHTML="pincode  must have  6 digits";
			return fl;
		}if(fl==0){
			document.getElementById('bill_b4').innerHTML="";
			return fl;
		}
	}
	function countrycheck(){
		var a=document.getElementById('bill_a5').value;
		var fl=0;
		if(a.length=null || a.length==""){
			document.getElementById('bill_b5').innerHTML="field  must not be empty";
			fl=1;
		return fl;
		}
		if(a.length>15){
			fl=1;
			document.getElementById('bill_b5').innerHTML="field  must not  be more than 15 characters";
			return fl;
		}if(fl==0){
			document.getElementById('bill_b5').innerHTML="";
			return fl;
		}
	}
	function namecheck(){
		var a=document.getElementById('bill_a6').value;
		var fl=0;
		if(a.length=null || a.length==""){
			document.getElementById('bill_b6').innerHTML="field  must not be empty";
			fl=1;
		return fl;
		}
		if(a.length>20){
			fl=1;
			document.getElementById('bill_b6').innerHTML="field  must not  be more than 20 characters";
			return fl;
		}if(fl==0){
			document.getElementById('bill_b6').innerHTML="";
			return fl;
		}		
		
	}
</script>
</html>