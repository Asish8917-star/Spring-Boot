<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

</head>
<body style="background: url('https://images.unsplash.com/photo-1562813733-b31f71025d54?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80');background-position: center;background-size: cover;">


<div align="center">
<h1 style="color: #ffcc99">Online Book Store</h1><br>
<form:form action="name" method="get">
<input type="text" name="name">
<input type="submit" value="Search Book">
</form:form><br><br>
<a href="create"><button>Add Books</button></a><br><br>
<table border="1">
<tr style="color:#40ff00 ">
	<th>ID</th>
	<th>BOOK NAME</th>
	<th>AUTHOR NAME</th>
	<th>STATUS</th>
	<th>PRICE</th>
	<th>ISBN</th>
	<th>ACTION</th>
</tr>
<c:forEach var="asish" items="${blist}">
	<tr style="color: #1affff">
		<td>${asish.id}</td>
		<td>${asish.bookName}</td>
		<td>${asish.authorName}</td>
		<td>${asish.status}</td>
		<td>${asish.price}</td>
		<td>${asish.isbn}</td>
		<td><a href="update?id=${asish.id}"><button type="button" class="btn btn-warning">Edit</button>&nbsp;</a><a href="delete?id=${asish.id}"><button type="button" class="btn btn-danger">Delete</button></a></td>
	</tr>
</c:forEach>
</table>
</div>
</body>
</html>