<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Booked Hotels</title>
<style>
html {
	background-color: rgb(256, 256, 256);
}

body {
	background-color: rgb(232, 232, 232);
	margin: 10% 20%;
	border: 2px solid black;
	font-family: "Times New Roman";
	position: relative;
}

.dottedborder {
	border: 1px dotted black;
}

h3 {
	background-color: rgb(112, 112, 112);
}

header {
	height: 138px;
	margin: 2px;
	padding: 2px;
	display: block;
	postion: relative;
}

footer {
	
}

div {
	margin: 2px;
	display: block;
	position: relative;
}

.left {
	float: left;
}

.right {
	float: right;
}

.righttopcontent {
	
}

table {
	margin-left: 50px;
	border: 1px solid black;
}

th {
	text-align: left;
	background-color: rgb(200, 200, 200);
	text-transform: uppercase;
}

table, th, tr, td {
	border: 1px solid black;
}

td {
	padding: 10px;
}

.sideheading {
	text-transform: uppercase;
	font-weight: bold;
	float: bottom;
}

.center {
	text-align: center;
	font-weight: bold;
}

hr {
	height: 5px;
	color: rgb(0, 0, 0);
}

.liststyle {
	list-style-type: none;
}

.subsubhead {
	text-transform: uppercase;
	display: inline-block;
	width: 300px;
	font-weight: 600;
}

.mainheading {
	text-transform: uppercase;
	font-size: x-large;
	text-align: center;
}
</style>
<style>
html {
	background-color: rgb(256, 256, 256);
}

body {
	background-color: rgb(232, 232, 232);
	margin: 10% 20%;
	border: 2px solid black;
	font-family: "Times New Roman";
	position: relative;
}

.dottedborder {
	border: 1px dotted black;
}

h3 {
	background-color: rgb(112, 112, 112);
}

header {
	height: 138px;
	margin: 2px;
	padding: 2px;
	display: block;
	postion: relative;
}

footer {
	
}

div {
	margin: 2px;
	display: block;
	position: relative;
}

.left {
	margin-left:20px;
}

.right {
	margin-right:20px;
}

.righttopcontent {
	
}

table {
	margin-left: 50px;
	border: 1px solid black;
}

th {
	text-align: left;
	background-color: rgb(200, 200, 200);
	text-transform: uppercase;
}

table, th, tr, td {
	border: 1px solid black;
}

td {
	padding: 10px;
}

.sideheading {
	text-transform: uppercase;
	font-weight: bold;
	float: bottom;
}

.center {
	text-align: center;
	font-weight: bold;
}

hr {
	height: 5px;
	color: rgb(0, 0, 0);
}

.liststyle {
	list-style-type: none;
}

.subsubhead {
	text-transform: uppercase;
	display: inline-block;
	width: 300px;
	font-weight: 600;
}

.mainheading {
	text-transform: uppercase;
	font-size: x-large;
	text-align: center;
}
</style>
<style>
html {
	background-color: rgb(256, 256, 256);
}

body {
	background-color: rgb(232, 232, 232);
	margin: 10% 20%;
	border: 2px solid black;
	font-family: "Times New Roman";
	position: relative;
}

.dottedborder {
	border: 1px dotted black;
}

h3 {
	background-color: rgb(112, 112, 112);
}

header {
	height: 138px;
	margin: 2px;
	padding: 2px;
	display: block;
	postion: relative;
}

footer {
	
}

div {
	margin: 2px;
	display: block;
	position: relative;
}

.left {
	float: left;
}

.right {
	float: right;
}

.righttopcontent {
	
}

table {
	margin-left: 50px;
	border: 1px solid black;
}

th {
	text-align: left;
	background-color: rgb(200, 200, 200);
	text-transform: uppercase;
}

table, th, tr, td {
	border: 1px solid black;
}

td {
	padding: 10px;
}

.sideheading {
	text-transform: uppercase;
	font-weight: bold;
	float: bottom;
}

.center {
	text-align: center;
	font-weight: bold;
}

hr {
	height: 5px;
	color: rgb(0, 0, 0);
}

.liststyle {
	list-style-type: none;
}

.subsubhead {
	text-transform: uppercase;
	display: inline-block;
	width: 300px;
	font-weight: 600;
}

.mainheading {
	text-transform: uppercase;
	font-size: x-large;
	text-align: center;
}
</style>
<style>
html {
	background-color: rgb(256, 256, 256);
}

body {
	background-color: rgb(232, 232, 232);
	margin: 10% 20%;
	border: 2px solid black;
	font-family: "Times New Roman";
	position: relative;
}

.dottedborder {
	border: 1px dotted black;
}

h3 {
	background-color: rgb(112, 112, 112);
}

header {
	height: 138px;
	margin: 2px;
	padding: 2px;
	display: block;
	postion: relative;
}

footer {
	
}

div {
	margin: 2px;
	display: block;
	position: relative;
}

.left {
	float: left;
}

.right {
	float: right;
}

.righttopcontent {
	
}

table {
	margin-left: 50px;
	border: 1px solid black;
}

th {
	text-align: left;
	background-color: rgb(200, 200, 200);
	text-transform: uppercase;
}

table, th, tr, td {
	border: 1px solid black;
}

td {
	padding: 10px;
}

.sideheading {
	text-transform: uppercase;
	font-weight: bold;
	float: bottom;
}

.center {
	text-align: center;
	font-weight: bold;
}

hr {
	height: 5px;
	color: rgb(0, 0, 0);
}

.liststyle {
	list-style-type: none;
}

.subsubhead {
	text-transform: uppercase;
	display: inline-block;
	width: 300px;
	font-weight: 600;
}

.mainheading {
	text-transform: uppercase;
	font-size: x-large;
	text-align: center;
}
</style>
<link rel="stylesheet" type="text/css" href="hotelcss.css">

</head>
<body bgcolor="white">
	<h1>reservations</h1>
	<h2>
		<i>${errorMessage}</i>
	</h2>
	<div>
	<span class="left">Current Hotel Booking as on <strong><fmt:formatDate type="date" value="${now}" /></strong></span>
	<span class="right" style="margin-right:172px"><strong>User: ${user.userName}</strong></span>
	</div>
	<c:set var="now" value="<%=new java.util.Date()%>" />
	<fmt:formatDate type="date" value="${now}" />
	<table>
		<tr>
			<th>Hotel Name</th>
			<th>Address</th>
			<th>City,State</th>
			<th>Check In Date</th>
			<th>Check Out Date</th>
		</tr>

		<c:forEach items="${reservations}" var="reservation">
			<tr>
				<td><c:out value="${reservation.hotel.name}" /></td>
				<td><c:out
						value="${reservation.hotel.area}  ${reservation.hotel.state}" /></td>
				<td><c:out
						value="${reservation.hotel.city}  ${reservation.hotel.state}" /></td>
				<%-- <td><fmt:formatDate type="date"
						value="${reservation.checkInDate}" /></td>
				<td><fmt:formatDate type="date"
						value="${reservation.checkOutDate}" /></td> --%>
				<td><c:out
						value="${reservation.checkInDate.getDay()}/${reservation.checkInDate.getMonth()}
				/${reservation.checkInDate.getYear()}" /></td>
				<td><c:out
						value="${reservation.checkOutDate.getDay()}/${reservation.checkOutDate.getMonth()}
				/${reservation.checkOutDate.getYear()}" /></td>
				<%-- <td><c:out value="${reservation.checkInDate}" /></td>
				<td><c:out value="${reservation.checkOutDate}" /></td> --%>
			</tr>
		</c:forEach>
	</table>
	<dl>
		<dt><h2>Change Search</h2></dt>
		<dd>
			<a href="searchHotels">
			<strong align="left" style="color: black">Search Hotels</strong>
			</a>
		</dd>
	</dl>
</body>
</html>
