<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login</title>
		<style>
			body {
				font-family: Arial, Helvetica, sans-serif;
				background-color: #f2f2f2;
				color: #333;
				margin: 0;
				padding: 0;
				background-image: url("https://images.pexels.com/photos/399160/pexels-photo-399160.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
				background-repeat: no-repeat;
				background-size: cover;
			}
			h1 {
			font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
			font-size: 2.5em;
			text-align: center;
			color: #333;
			margin-top: 40px;
			margin-bottom: 30px;
		}
	
		table {
			margin: 0 auto;
			border-collapse: collapse;
			background-color: #fff;
			padding: 20px;
			box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.3);
			border-radius: 5px;
		}
	
		td {
			padding: 10px;
		}
	
		input[type="text"],
		input[type="password"],
		button {
			padding: 10px;
			border-radius: 5px;
			border: 1px solid #ccc;
			font-size: 16px;
			width: 100%;
			max-width: 300px;
			box-sizing: border-box;
		}
	
		button {
			background-color: #4CAF50;
			color: #fff;
			cursor: pointer;
		}
	
		button:hover {
			background-color: #3e8e41;
		}
	
		a {
			text-decoration: none;
			color: #4CAF50;
		}
	
		a:hover {
			text-decoration: underline;
		}
	
		.message {
			font-style: italic;
			color: red;
			text-align: center;
			margin-top: 10px;
		}
	</style>
	</head>
	<body>
		<h1>Login</h1>
		<form id="loginForm" modelAttribute="login" action="loginProcess" method="post">
			<table>
				<tr>
					<td><label for="username">Username:</label></td>
					<td><input type="text" id="username" name="username" /></td>
				</tr>
				<tr>
					<td><label for="password">Password:</label></td>
					<td><input type="password" id="password" name="password" /></td>
				</tr>
				<tr>
					<td></td>
					<td><button id="login" name="login">Login</button></td>
				</tr>
				<tr>
					<td></td>
					<td><a href="home">Home</a></td>
				</tr>
			</table>
		</form>
		<div class="message">${message}</div>
	</body>
	</html>
	
	
	
	
	