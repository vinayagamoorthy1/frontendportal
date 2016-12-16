<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body style="background-color: #84ffff">


 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .navbar{background-color:yellow!important;margin-top:20px;}
  .navbar {min-height: 20px;}
.navbar-brand {padding: 0 15px; height: 40px; line-height: 40px;}
  </style>
</head>
<body>
 <nav class="navbar navbar-default">
<div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="log"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li> 
    </ul>
      </nav>
<br>
<br>
<br>

  <h2>Admin Control</h2>
  
  <table class="table table-bordered">
    <thead>
      <th  class="success col-lg-3 col-lf-offset-1 col-sm-3 col-sm-offset-1">
      <div class="container">
    <div class="row row-centered">
     
<div class="text-center"><h3 class="text-danger">Manage Categories: <a href="viewCategory" class="btn btn-warning" role="button"> View </a>  |  <a href="category" class="btn btn-info" role="button" >ADD</a> <br></h3></div>
<div class="text-center"><h3 class="text-green">Manage Products  : <a href="viewproduct"class="btn btn-warning" role="button">   View </a>  | <a href="product"class="btn btn-info" role="button"> Add</a>  <br></h3></div>
<div class="text-center"><h3 class="text-warning">Manage Suppliers : <a href="viewSupplier"class="btn btn-warning" role="button">  View </a>  | <a href="supplier"class="btn btn-info" role="button">Add</a>  </br></h3></div>
<c:if test="${not empty isAddCategoryClicked}">
</c:if>
<c:if test="${not empty isViewCategoriesClicked}">
</c:if>
<c:if test="${not empty isViewSuppliersClicked}">
</c:if>
</div>
</div>
</div>
 
</th>

    </thead>
    
  </table>
</div>

</body>
</html>
