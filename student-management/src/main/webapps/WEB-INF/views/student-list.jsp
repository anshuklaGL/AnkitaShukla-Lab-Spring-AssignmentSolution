<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<style>
h1 {text-align: center;}
div {text-align: center;}

th, td {
  background-color: #96D4D4;
}
th, td {
  padding: 15px;
}
th, td {
  padding-top: 10px;
  padding-bottom: 20px;
  padding-left: 30px;
  padding-right: 40px;
}

</style>
<meta charset="UTF-8">
<title>Students List</title>
</head>
<body>
	<div class="container">
		<h3>Add New Student</h3>
		<hr>
		<a href="/student/showFormForAdd" class="btn btn-primary btn-sm mb-3">Add Student</a> <a href="/logout"
			class="btn btn-primary btn-sm mb-3 mx-auto">Logout</a>

		<table
			style="border: 1px solid black; margin-left: auto; margin-right: auto;">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Course</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>
			<c:forEach items="${students}" var="student">
				<tr>
					<td><c:out value="${student.firstName}" /></td>
					<td><c:out value="${student.lastName}" /></td>
					<td><c:out value="${student.course}" /></td>
					<td><c:out value="${student.country}" /></td>
					<td><a
						href="/student/showFormForUpdate?studentId=${student.id}"
						class="btn btn-info btn-sm">Update</a> <a
						href="/student/delete?studentId=${student.id}"
						class="btn btn-danger btn-sm" onclick=if(!(confirm( 'Are you sure
						you want to delete this Student?'))) returnfalse">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<hr>
		<a href="/">Back to Home Page</a>
	</div>
</body>
</html>