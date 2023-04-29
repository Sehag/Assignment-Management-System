<%@page import="jbr.springmvc.model.Assignment"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ViewAssignmentTeacher</title>
<style>
	body {
		background-color: #F6F6F6;
		font-family: Arial, sans-serif;
		color: #333;
	}
	h3 {
	color: #006699;
}

table {
	border-collapse: collapse;
	margin: auto;
	margin-top: 30px;
	margin-bottom: 30px;
	background-color: #FFF;
	box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
	border-radius: 5px;
	overflow: hidden;
}

th, td {
	padding: 10px;
	text-align: center;
	border-bottom: 1px solid #CCC;
}

th {
	background-color: #006699;
	color: #FFF;
	font-weight: normal;
}

a {
	color: #006699;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

p {
	text-align: center;
	margin-top: 30px;
}

</style>
</head>
<body >
 <br/>
 <br/>
 <br/>
  <p align="center"> Welcome <%=session.getAttribute("username") %> </p>
  
	<table border="1" align="center">
		<tr>
			<td align="center" colspan="5"> <h3> Assignment Details </h3> </td> 
		</tr>
		<tr>
		</tr>
		<tr>
		</tr>
		
		<tr>
		</tr>
		
		<tr>
		<th>Sl.no</th> <th>Subject</th><th> Assignment Type </th> <th>Assignment Description</th> <th> Due Date</th>
		</tr>
		
		<% 
		
		List<Assignment> assignmentsList = (List<Assignment>) session.getAttribute("assignmentsListTeachData");
		 
	     if(assignmentsList != null) {
	    	 
	     
		for(int i=0 ; i < assignmentsList.size(); i++) {
			Assignment assmnt = assignmentsList.get(i);
			session.setAttribute(String.valueOf(assmnt.getAssignment_id()),assmnt);
		%>
		<tr>
		<td><%=assmnt.getAssignment_id()%>></td>
		
	  <td> <%=assmnt.getSub() %> </td>
		
	  <td> <%=assmnt.getAsmnt_type() %> </td>
	
	  <td> <%=assmnt.getDes() %> </td>
		
	  <td>  <%=assmnt.getDue_date() %> </td>
		
		<% } 
		}%>
		<tr>
		
		</tr>
		
	</table>
	<p align="center"><a href="teacherHome">Home</a> </p>
</body>
</html>