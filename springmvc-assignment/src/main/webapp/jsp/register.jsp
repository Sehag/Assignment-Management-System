<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style>
    body {
        font-family: 'Montserrat', sans-serif;
        font-size: 16px;
        
    }
    
    h1 {
        font-family: 'Playfair Display', serif;
        font-size: 36px;
        text-align: center;
        margin-top: 50px;
        margin-bottom: 50px;
    }
    
    table {
        border-collapse: collapse;
        margin: 0 auto;
        width: 50%;
        background-color: #fff;
        box-shadow: 0px 3px 3px #ccc;
        padding: 20px;
    }
    
    th, td {
        padding: 10px;
        text-align: left;
    }
    
    input[type="text"], input[type="password"], input[type="email"] {
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        width: 100%;
    }
    
    button[type="submit"] {
        background-color: #4CAF50;
        border: none;
        color: #fff;
        padding: 10px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin-top: 20px;
        border-radius: 4px;
        cursor: pointer;
    }
    
    a {
        text-decoration: none;
        color: #4CAF50;
    }
</style>
</head>
<body>
	<form:form id="regForm" modelAttribute="user" action="registerProcess"
		method="post">

		<table align="center">
			<tr>
				<td><form:label path="username">Username</form:label></td>
				<td><form:input path="username" name="username" id="username" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Password</form:label></td>
				<td><form:password path="password" name="password"
						id="password" /></td>
			</tr>
			<tr>
				<td><form:label path="firstname">FirstName</form:label></td>
				<td><form:input path="firstname" name="firstname"
						id="firstname" /></td>
			</tr>
			<tr>
				<td><form:label path="lastname">LastName</form:label></td>
				<td><form:input path="lastname" name="lastname" id="lastname" /></td>
			</tr>
			<tr>
				<td><form:label path="email">Email</form:label></td>
				<td><form:input path="email" name="email" id="email" /></td>
			</tr>
			<tr>
				<td><form:label path="role">Role</form:label></td>
				<td><form:input path="role" name="role" id="role" /></td>
			</tr>
			<tr>
				<td><form:label path="phone">Phone</form:label></td>
				<td><form:input path="phone" name="phone" id="phone" /></td>
			</tr>

			<tr>
				<td></td>
				<td><form:button id="register" name="register">Register</form:button></td>
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td><a href="logout">Logout</a></td>
			</tr>
		</table>
	</form:form>

</body>
</html>