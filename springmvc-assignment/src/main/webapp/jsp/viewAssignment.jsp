<%@page import="jbr.springmvc.model.SubmittedAssignment"%>
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
    body {
        background-color: #f2f2f2;
    }
    h1 {
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
		color: #003399;
		text-align: center;
	}
    h3 {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: #003399;
        text-align: center;
        margin-top: 50px;
        margin-bottom: 30px;
    }
    table {
        margin: 0 auto;
        border-collapse: collapse;
        border: 2px solid #003399;
        box-shadow: 5px 5px 10px #888888;
        background-color: #fff;
    }
    td, th {
        padding: 10px;
        text-align: center;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: #333;
    }
    th {
        background-color: #003399;
        color: #fff;
    }
    a {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: #003399;
        text-decoration: none;
    }
    a:hover {
        color: #0066cc;
    }
    </style>
</head>
<body >
 <br/>
 <br/>
 <br/>
  <p align="center"><h1> Welcome <%=session.getAttribute("username") %> </h1> </p>
  
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
		
		List<Assignment> assignmentsList = (List<Assignment>) session.getAttribute("viewAssignment");
		
		//List<SubmittedAssignment> submittedDetails = (List<SubmittedAssignment>) session.getAttribute("submittedStudentAssignmentDetails");
		 
	     if(assignmentsList != null) {
	    	 SubmittedAssignment submissionList;
	     
		for(int i=0 ; i < assignmentsList.size(); i++) {
			Assignment assmnt = assignmentsList.get(i);
			session.setAttribute(String.valueOf(assmnt.getAssignment_id()),assmnt);
			
			//for(int j=0; j < submittedDetails.size(); j++ ) {
				
				// submissionList = submittedDetails.get(j);
				//  if(assmnt.getAssignment_id() == Integer.parseInt(submissionList.getAssignment_id())){
				//	  break;
				//  }
				

	
		%>
		<tr>
		<td><a href='prepareAssignment/?assignmentID=<%=assmnt.getAssignment_id()%>'><%=assmnt.getAssignment_id()%></a></td>
		
	  <td> <%=assmnt.getSub() %> </td>
		
	  <td> <%=assmnt.getAsmnt_type() %> </td>
	
	  <td> <%=assmnt.getDes() %> </td>
		
	  <td>  <%=assmnt.getDue_date() %> </td>
	  
	
		
		<% } 
		
		}
		
		%>
		<tr>
		
		</tr>
		
	</table>
	<p align="center"><a href="studentHome">Home</a> </p>
</body>
</html>