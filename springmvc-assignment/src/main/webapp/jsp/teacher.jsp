<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Teacher</title>
	<style>
        body{
            background-color: aqua;
        }
        h2 {
			font-size: 2.5em;
			color: #333;
			text-align: center;
			text-transform: uppercase;
			letter-spacing: 2px;
			margin-bottom: 50px;
			text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
		}
		td {
			display: inline-block;
			padding: 10px 20px;
			background-color: white;
			border: none;
			border-radius: 5px;
			box-shadow: 0px 3px 10px rgba(0, 0, 0, 0.2);
			transition: all 0.3s ease;
			cursor: pointer;
			margin: 10px;
			text-align: center;
			font-size: 1.2em;
			color: #fff;
			text-decoration: none;
		}

		td:hover {
			background-color: #e4e425;
			box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3);
			transform: translateY(-5px);
		}
	</style>
</head>
<body>
	<table align="center">
		<tr>
			<td><h2>Welcome ${firstname}</h2></td>
		</tr>
		<tr>
			<td><a href="viewAssignmentTeacherAction">View All Assignments</a></td>
			<td><a href="viewSubmissionTeacher">View Submissions</a></td>
			<td><a href="create">Create New Assignments</a></td>
		</tr>
		<tr>
			<td><a href="logout">Logout</a></td>
		</tr>
	</table>
</body>
</html>
