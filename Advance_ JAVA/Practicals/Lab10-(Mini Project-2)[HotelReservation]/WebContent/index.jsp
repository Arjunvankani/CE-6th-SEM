<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


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

a:link, a:visited {
    color: white;
    padding: 14px 25px;
    text-align: center; 
    text-decoration: none;
    display: inline-block;
}

a:hover, a:active {
    background-color: rgb(112,112,112);
}

.mainheading
{
text-transform:uppercase;
font-size:x-large;
text-align:center;
}

</style>
<title>HotelReservation</title>
</head>

<body>
	<center>
		<form>
			<h1>Welcome To Hotel
				Booking Application</h1>
			<br> <br> <br> <br> <br> <br>
			<table>
				<tr>
					<td colspan="1"><a href="searchHotels"><h2 align="center"
								style="color: black">Search Hotels</h2></a></td>
					<%-- <td><h3 style="color: #48D1CC;">${msg}</h3></td> --%>
				</tr>
			</table>
		</form>
	</center>
</html>