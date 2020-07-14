<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>adding new books</title>
<style>
.error {
color: #33ff99;
font-style: italic;
}
</style>
</head>
<body style="background: url('https://ak.picdn.net/shutterstock/videos/28345648/thumb/1.jpg');background-size: cover;background-position: center;">
<form:form action="save" method="post" modelAttribute="books">
<table style="color: #ffff33">
<tr>
	<td><form:hidden path="id"/></td>
</tr>
<tr>
	<td>Book Name: <form:input path="bookName"/><form:errors path="bookName" cssClass="error"/></td>
</tr>
<tr>
	<td>Author Name: <form:input path="authorName"/><form:errors path="authorName" cssClass="error"/></td>
</tr>
<tr>
	<td>Status: <form:input path="status"/><form:errors path="status" cssClass="error"/></td>
</tr>
<tr>
	<td>Price: <form:input path="price"/><form:errors path="price" cssClass="error"/></td>
</tr>
<tr>
	<td>ISBN: <form:input path="isbn"/><form:errors path="isbn" cssClass="error"/></td>
</tr>
	<th colspan="2">
		<input type="submit" value="submit">
	</th>
</table>

</form:form>
</body>
</html>