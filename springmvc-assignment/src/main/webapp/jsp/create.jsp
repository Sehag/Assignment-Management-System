<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Assignment</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
    body{
        background-color: #f5f5f5;
    }
    .container{
        margin-top: 50px;
        background-color: #fff;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0px 0px 20px rgba(0,0,0,0.1);
    }
    .form-control:focus{
        border-color: #8e44ad;
        box-shadow: none;
    }
    .btn{
        background-color: #8e44ad;
        color: #fff;
        border-radius: 20px;
        padding: 10px 20px;
        font-weight: bold;
        border: none;
        box-shadow: none;
        text-transform: uppercase;
        transition: all 0.3s ease 0s;
    }
    .btn:hover{
        background-color: #6C3483;
    }
    .btn:focus{
        box-shadow: none;
    }
    .btn i{
        margin-right: 5px;
    }
    h2{
        color: #8e44ad;
        margin-bottom: 30px;
        text-align: center;
        text-transform: uppercase;
    }
    form label{
        font-weight: bold;
    }
    form table{
        width: 100%;
    }
    form table td{
        padding: 10px;
        font-size: 18px;
        color: #666;
        border-top: none;
    }
    form table td:first-child{
        width: 200px;
        color: #000;
        font-weight: bold;
    }
    form select{
        padding: 5px;
        width: 100%;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        background-color: #f5f5f5;
        color: #666;
    }
    form textarea{
        padding: 10px;
        width: 100%;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        background-color: #f5f5f5;
        color: #666;
        resize: none;
    }
    form input[type="text"]{
        padding: 10px;
        width: 100%;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        background-color: #f5f5f5;
        color: #666;
        resize: none;
    }
</style>
</head>
<body>
	<form:form id="createForm" modelAttribute="create" action="createProcess"
		method="post">

		<table align="center">
			
          <tr>
           
				<td><form:label path="sub">Subject</form:label></td>
				<td><form:select path="sub">
                     <form:option value="-" label="--Please Select--"/>
                      <form:option value="OOAD" />
                      <form:option value="Data Structures" />
                      <form:option value="Cloud Computing" />
                     </form:select>
                </td>
			</tr>
			
			 <tr>
				<td><form:label path="asmnt_type">Assignment Type</form:label></td>
				<td><form:select path="asmnt_type">
                     <form:option value="-" label="--Please Select--"/>
                      <form:option value="Coding" />
                      <form:option value="Project report" />
                      <form:option value="Lab assignment" />
                     </form:select>
                </td>
			</tr>
			
			 <tr>
				<td><form:label path="des">Description</form:label></td>
				<td><form:textarea path="des" rows="5" cols="20"/>
                </td>
			</tr>
			
			<tr>
				<td><form:label path="due_date">Due Date</form:label></td>
				<td><form:input path="due_date" name="due_date" id="due_date" /></td>
			</tr>
			
			<tr>
				<td></td>
				<td><form:button id="create" name="create">Create</form:button>
				<form:hidden path="username" value='<%=session.getAttribute("username")%>'/>
				</td>
				
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td><a href="teacherHome">Home</a></td>
			</tr>
		</table>
	</form:form>

</body>
</html>