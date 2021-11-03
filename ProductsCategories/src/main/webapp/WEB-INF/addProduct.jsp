<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<title>New Product</title>
</head>
<body class="pl-4">
	<h3 class="display-3"><small><u>New Product</u></small></h3>
	<br>
	
	<form:form action="/products/new" method="POST" modelAttribute="product">
	
		<p><form:errors path="name" cssClass="alert alert-danger"/></p>
		<p><form:label cssClass="h4 font-weight-normal" path="name">Name</form:label></p>
		<p> <form:input cssClass="form-control col-4" path="name" /> </p>
		
		<p><form:errors path="description" cssClass="alert alert-danger"/></p>
		<p><form:label cssClass="h4 font-weight-normal" path="description">Description</form:label></p>
		<p> <form:textarea cssClass="form-control col-4" path="description" /> </p>
		
		<p><form:errors path="price" cssClass="alert alert-danger"/></p>
		<p><form:label cssClass="h4 font-weight-normal" path="price">price</form:label></p>
		<p> <form:input cssClass="form-control col-4" path="price" /> </p>
		<br>
		<button type="submit" class="btn btn-success">Add Product</button>
		
	</form:form>

  </body>
</body>
</html>