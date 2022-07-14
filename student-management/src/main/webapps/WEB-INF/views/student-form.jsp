<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Form For ${mode}</title>
</head>
<style>
 label {
        display: inline-block;
        width: 150px;
      }
</style>
<body>
	<div class="container">
		<h3>Student Form for ${mode}</h3>
		<hr>
		<p class="h4 mb-4">Enter Student Details</p>
		<form action="/student/save" method="POST">

			<input type="hidden" name="id" value="${student.id}">
			
			<div class="form-inline">
			<label for="first_name">First Name:</label>
				<input type="text" name="first_name" value="${student.firstName}"
					class="form-control mb-4 col-4" placeholder="Title">
			</div>
			<div class="form-inline">
			<label for="last_name">Last Name:</label>
				<input type="text" name="last_name" value="${student.lastName}"
					class="form-control mb-4 col-4" placeholder="Title">
			</div>
			<div class="form-inline">
			<label for="course">Course:</label>
				<input type="text" name="course" value="${student.course}"
					class="form-control mb-4 col-4" placeholder="Title">
			</div>
			<div class="form-inline">
			<label for="course">Country:</label>
				<input type="text" name="country" value="${student.country}"
					class="form-control mb-4 col-4" placeholder="Title">
			</div>
			<button type="submit" class="btn btn-info col-2">Save</button>
		</form>
		<hr>
		<a href="list">Back to list of students</a>
	</div>
</body>
</html>
