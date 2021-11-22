<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="align-center">
		<h1>Submitted Info</h1>
		<table class="table table-primary">
			<thead>
				<tr>
					<th>Attributes</th>
				</tr>
				<tr></tr>
			</thead>
			<tbody>
				<tr>
					<td>Name</td>
					<td><c:out value="${user.name}" /></td>
				</tr>
				<tr>
					<td>Dojo Location</td>
					<td><c:out value="${user.location}" /></td>
				</tr>
				<tr>
					<td>Favorite Language</td>
					<td><c:out value="${user.language}" /></td>
				</tr>
				<tr>
					<td>Comments</td>
					<td><c:out value="${user.comments}"/></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>