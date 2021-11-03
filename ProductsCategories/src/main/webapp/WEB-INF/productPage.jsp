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
	<title>Product Page</title>
</head>
<body>
<br>
	<div class="container text-center border-bottom border-dark ">
		<h1 class="display-1"><small> <c:out value="${product.name}"/> </small></h1>
	</div>
	<br>
	<div class="container">
		<div class="row">
			<div class="col">
				<h4 class="display-4"><small><u>Categories</u></small></h4>
				<ul class="list-group">
					<c:forEach items="${product.categories}" var="category">
						<li class="list-group-item"> -  ${category.name} </li>
					</c:forEach> 
				 
				</ul>
			</div>
			<div class="col">
				<form:form action="/products/${product.id}" method="POST" modelAttribute="categoryProduct">
					 <p><u>Add a Category</u></p> 
					<form:select cssClass="custom-select col-6" path="category">
						<c:forEach items="${categories}" var="category">
							<form:option value="${category.id}"> ${category.name} </form:option>
						</c:forEach>
					</form:select>
					<button type="submit" class="btn btn-success">Add to Product</button>
				</form:form>
			</div>
		</div>
	</div>

	
  </body>
</body>
</html>