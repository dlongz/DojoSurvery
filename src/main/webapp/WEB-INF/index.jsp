<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>DoJo Survery</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container-md row g-3 align-items-center">
        <form method="post" action="/results">
            <div class="col-6 mb-3">
                <label for="yname" class="form-label">Your Name:</label>
                <input type="text" name="yname" id="" class="form-control">
            </div>
            <div class="col-md-6 mb-3">
                <label for="loc" class="form-label">Dojo Location:</label>
                <select name="loc" id="" class="form-select">
                	<c:forEach items="${locationList}" var="loc">
                	<option value="${loc}">${loc}</option>
                	</c:forEach>
                </select>
            </div>
            <div class="align-center col-md-6 mb-3">
                <label for="lang" class="form-label">Favorite Language:</label>
                <select name="lang" id="" class="form-select">
                    <c:forEach items="${languageList}" var="lang">
                	<option value="${lang}">${lang}</option>
                	</c:forEach>
                </select>
            </div>
            <div class="col-6 mb-3">
                <label for="comm" class="form-label">Comment (Optional):</label>
                <textarea name="comm" id="" cols="30" rows="10" class="form-control"></textarea>
            </div>
            <button type="submit" value="Submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>