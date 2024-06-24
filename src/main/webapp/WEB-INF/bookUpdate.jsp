<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  
<h1>Update Book</h1>
	<a href="/home">back to shelves</a>

<form:form action="/edit/book/${id}" method="post" modelAttribute="book">
<input type="hidden" name="_method" value="put">
   <div class="form-row">
			 	<form:errors path="title" class="error"/>
				<form:label for="title" path="title">Title:</form:label>
				<form:input type="text" path="title" class="form-control"/>
			</div>
			
			<div class="form-row">
				<form:errors path="author" class="error"/>
				<form:label for="author" path="author">Author:</form:label>
				<form:input type="text" path="author" class="form-control"/>
			</div>
			
			<div class="form-row">
				<form:errors path="thoughts" class="error"/>
				<form:label for="thoughts" path="thoughts">Thoughts:</form:label>
				<form:textarea path="thoughts" class="form-control"/>
			</div>
			<div class="form-row">
				<form:errors path="user" class="error"/>
				<form:hidden path="user" value="${user.id}"/>
			</div>
			
			<div class="form-row">
				<input type="submit" value="Update" class="btn-warning"/>
			</div>
</form:form>  
</body>
</html>