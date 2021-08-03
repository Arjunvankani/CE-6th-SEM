<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>User Login</title>
<link rel="stylesheet" type="text/css"
	href="hotelcss.css">
	<style>
html
{
background-color:rgb(256,256,256);
}
body
{
background-color:rgb(232,232,232);
margin:10% 20%;
border:2px solid black;
font-family:"Times New Roman";
position:relative;
}
.dottedborder
{
border:1px dotted black;
}
h3
{
background-color:rgb(112,112,112);
}
header
{
height:138px;
margin:2px;
padding:2px;
display:block;
postion:relative;
}
footer
{
}
div
{
margin:2px;
display:block;
position:relative;
}
.left
{
float:left;
}
.right
{
float:right;
}
.righttopcontent
{
}
table
{
margin-left:50px;
border:1px solid black;
}
th
{
text-align:left;
background-color:rgb(200,200,200);
text-transform:uppercase;
}
table,th,tr,td
{
border:1px solid black;
}
td { 
    padding: 10px;
} 
.sideheading
{
text-transform:uppercase;
font-weight:bold;
float:bottom;
}
.center
{
text-align:center;
font-weight:bold;
}
hr
{
height:5px;
color:rgb(0,0,0);
}
.liststyle
{
list-style-type:none;
}
.subsubhead
{
text-transform:uppercase;
display:inline-block;
width:300px;
font-weight:600;
}
.mainheading
{
text-transform:uppercase;
font-size:x-large;
text-align:center;
}
</style><style>
html
{
background-color:rgb(256,256,256);
}
body
{
background-color:rgb(232,232,232);
margin:10% 20%;
border:2px solid black;
font-family:"Times New Roman";
position:relative;
}
.dottedborder
{
border:1px dotted black;
}
h3
{
background-color:rgb(112,112,112);
}
header
{
height:138px;
margin:2px;
padding:2px;
display:block;
postion:relative;
}
footer
{
}
div
{
margin:2px;
display:block;
position:relative;
}
.left
{
float:left;
}
.right
{
float:right;
}
.righttopcontent
{
}
table
{
margin-left:50px;
border:1px solid black;
}
th
{
text-align:left;
background-color:rgb(200,200,200);
text-transform:uppercase;
}
table,th,tr,td
{
border:1px solid black;
}
td { 
    padding: 10px;
} 
.sideheading
{
text-transform:uppercase;
font-weight:bold;
float:bottom;
}
.center
{
text-align:center;
font-weight:bold;
}
hr
{
height:5px;
color:rgb(0,0,0);
}
.liststyle
{
list-style-type:none;
}
.subsubhead
{
text-transform:uppercase;
display:inline-block;
width:300px;
font-weight:600;
}
.mainheading
{
text-transform:uppercase;
font-size:x-large;
text-align:center;
}
</style>
</head>
<body>
	<h2>User Registration</h2>
	<form:form method="post" action="createUser" commandName="registeredUser">

		<table>
			<h2>
				<i>${errorMessage}</i>
			</h2>
			<tr>
				<td><form:label path="mailId">Email</form:label></td>
				<td><form:input path="mailId" /></td>
			</tr>
			<tr>
				<td><form:label path="userName">User Name</form:label></td>
				<td><form:input path="userName" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Password</form:label></td>
				<td><form:input path="password" type="password" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Register" /></td>
			</tr>
		</table>

	</form:form>
</body>
</html>
