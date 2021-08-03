<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Search results</title>
<link rel="stylesheet" type="text/css" href="hotelcss.css">
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
table
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

</style>
</head>
<body bgcolor="white">
	<h1>Hotels</h1>
	<table>
		<tr>
			<th>Name</th>
			<th>Area</th>
			<th>City,State</th>
			<th>Zip</th>
			<th>Action</th>
		</tr>

		<c:forEach items="${hotels}" var="hotel">
			<tr>
				<td><c:out value="${hotel.name}" />
				<td>
				<td><c:out value="${hotel.area}  ${hotel.state}" />
				<td>
				<td><c:out value="${hotel.city}  ${hotel.state}" />
				<td>
				<td><c:out value="${hotel.zip}" />
				<td>
				<td><a href=" <c:url value="getHotel?id=${hotel.id}" />" />
					View Hotel</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
