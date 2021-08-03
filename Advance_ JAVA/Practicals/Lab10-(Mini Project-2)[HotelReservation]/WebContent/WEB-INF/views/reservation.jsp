<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reservation</title>
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
</style>
</head>

<body style="border: 1px">
<div class="centre"><h3>${errorMessage}</h3></div>
	<form action="showBookedHotels" commandName="reservationObj">
		<div class=" center">
			<div class="center mainheading">Booking Details</div>
			<hr>
			<h2>
				
			</h2>
			<div>
				<div class="left ">
					<div>${hotel.name}</div>
					<div>${hotel.area }</div>
					<div>${hotel.city},&nbsp;${hotel.state},&nbsp;${hotel.pin}</div>
					<div>${hotel.country}</div>
					<div>Rate: ${hotel.cost}</div>
				</div>

				<div class="right">
					<table>
						<tr>
							<td>Mail Id</td>
							<td>${user.mailId}</td>
						</tr>
						<tr>
							<td><label>Check-in Date</label></td>
							<td><input name="checkInDate" type="date" /></td>
						</tr>
						<tr>
							<td><label>Check-Out Date</label></td>
							<td><input name="checkOutDate" type="date" /></td>
						</tr>
						<tr>
							<td><input name="hotelId" type="hidden" value="${hotel.id}" /></td>
							<td><input name="userName" type="hidden"
								value="${user.userName}" /></td>
						</tr>


						<tr>
							<td colspan="2"><input type="submit"
								value="place reservation" /></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</form>
</body>
</html>