<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="jbr.springmvc.model.Assignment"%>
<%@page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student</title>
<style>
    body {
      background-color: #F8F8F8;
      font-family: Arial, sans-serif;
    }
    h1 {
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
		color: #003399;
		text-align: center;
	}
    table {
    border-collapse: collapse;
    width: 80%;
    margin: auto;
    background-color: #FFFFFF;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    
    th {
    background-color: #1E90FF;
    color: white;
    padding: 8px;
    text-align: center;
    font-size: 16px;
    }
    
    td {
    border-bottom: 1px solid #ddd;
    padding: 8px;
    text-align: center;
    }
    
    tr:hover {
    background-color: #F5F5F5;
    }
    
    h1 {
    text-align: center;
    color: #1E90FF;
    font-size: 36px;
    }
    
    h3 {
    color: #1E90FF;
    font-size: 24px;
    }
    
    form {
    text-align: center;
    }
    
    textarea {
    border-radius: 5px;
    border: 1px solid #ccc;
    padding: 5px;
    resize: none;
    font-family: Arial, sans-serif;
    font-size: 16px;
    }
    
    button {
    background-color: #1E90FF;
    color: white;
    border-radius: 5px;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    }
    
    a {
    text-decoration: none;
    color: #1E90FF;
    font-size: 16px;
    }
    
    a:hover {
    color: #0066CC;
    }
    </style>
</head>
<body>
	<table border="1" align="center">
		<h1>Welcome <%=session.getAttribute("username") %></h1>
		<tr>
		<th>Sl.no</th> <th>Subject</th><th> Assignment Type </th> <th>Assignment Description</th> <th> Due Date</th>
		</tr>
		
		<% 
		 Assignment assmnt = (Assignment)session.getAttribute(request.getParameter("assignmentID"));
		if( assmnt != null ) {
		%>
		<tr>
		<td><%=assmnt.getAssignment_id()%></td>
		
	  <td> <%=assmnt.getSub() %> </td>
		
	  <td> <%=assmnt.getAsmnt_type() %> </td>
	
	  <td> <%=assmnt.getDes() %> </td>
		
	  <td>  <%=assmnt.getDue_date() %> </td>
	
		</tr>
		
		<% } %>
		
	<form:form id="submitForm" modelAttribute="assignmentSubmission" action="/springmvc-assignment/submitAssignmentProcess"
		method="POST">

		
			
			 <tr>
				<td>Enter Assignment:</td>
				<td><form:textarea path="assignmentDetails" rows="20" cols="40"/>
				 <form:hidden path="assignment_id" value='<%=assmnt.getAssignment_id()%>'/>
				  <form:hidden path="username" value='<%=session.getAttribute("username") %>'/>
                </td>
			</tr>
			<tr>
				<td></td>
				<td align="left"><form:button id="submitForm" name="SubmitForm">Submit</form:button></td>
			</tr>
		
	</form:form>
		
		
	</table>
	<p align="center"><a href="/springmvc-assignment/studentHome">Home</a> </p>
</body>
</html>