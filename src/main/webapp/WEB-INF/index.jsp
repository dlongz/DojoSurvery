<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>DoJo Survery</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container-md row g-3 align-items-center">
        <form:form action="/submit" method="post" modelAttribute="user">
            <div class="col-6 mb-3">
                <form:label path="yname" class="form-label">Your Name:</form:label>
                <form:input path="text" name="yname" id="" class="form-control"/>
            </div>
            <div class="col-md-6 mb-3">
                <label path="loc" class="form-label">Dojo Location:</label>
                <form:select path="loc" id="" class="form-select">
                    <option value="San Jose">San Jose</option>
                    <option value="San Jose">Dallas</option>
                    <option value="San Jose">New York</option>
                    <option value="San Jose">Chicago</option>
                </form:select>
            </div>
            <div class="align-center col-md-6 mb-3">
                <form:label path="flang" class="form-label">Favorite Language:</form:label>
                <form:select path="flang" id="" class="form-select">
                    <option value="Python">Python</option>
                    <option value="Python">Javascript</option>
                    <option value="Python">Java</option>
                    <option value="Python">C++</option>
                </form:select>
            </div>
            <div class="col-6 mb-3">
                <form:label path="comms" class="form-label">Comment (Optional):</form:label>
                <form:textarea path="comms" id="" cols="30" rows="10" class="form-control"></form:textarea>
            </div>
            <form:input path="button" value="Submit" class="btn btn-primary"/>
        </form:form>
    </div>
</body>
</html>