<%@page import="jbr.springmvc.model.Assignment"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student</title>
<style>
	h1 {
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
		color: #003399;
		text-align: center;
	}
	a {
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
		color: #003399;
		text-decoration: none;
	}
	table {
		margin-top: 50px;
		border-collapse: collapse;
		border: 2px solid #003399;
		box-shadow: 5px 5px 10px #888888;
	}
	td {
		padding: 10px;
		text-align: center;
	}
	</style>
</head>
<body>
	<table align="center">
		<tr>
			<td><h1>Welcome ${firstname}</h1></td>
		</tr>
		
		<tr>
		<td><a href="viewAssignment" > View Assignments </a></td>
		</tr>
		<tr>
			<td><a href="logout">Logout</a></td>
		</tr>
	</table>
</body>
</html>