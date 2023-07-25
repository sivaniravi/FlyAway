<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FLYAWAY.COM</title>
<style>
body {
  overflow: hidden;
  position: relative;
}
.back-bg {
  opacity: 0.6;
  position:absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: auto;
}
.container{
	position: relative;
}
#details {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#details td, #details th {
  border: 1px solid #ddd;
  padding: 8px;
}

#details tr:nth-child(even){background-color: #f2f2f2;}

#details tr:hover {background-color: #F0F8FF;}

#details th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #6699CC;
  color: white;
}
</style>
</head>
<body>
<div class="content">
<img
    class="back-bg"
    src="https://c4.wallpaperflare.com/wallpaper/105/547/579/anime-original-airplane-cloud-wallpaper-preview.jpg"
    alt=""
  >
	<h1 align="center">Passenger Details</h1>
	<h2 align="center">
		<a href="AddPassenger.jsp">Add Passenger</a> &nbsp;&nbsp;&nbsp;
	</h2>
	<div class="container" align="center">
		<table border="1" id="details">
			<caption>Passenger Details</caption>
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Contact</th>
				<th>Age</th>
				<th>Email</th>
			</tr>
			<c:forEach var="p" items="${list}">
				<tr>
					<td><c:out value="${p.pId}" /></td>
					<td><c:out value="${p.fname}" /></td>
					<td><c:out value="${p.lname}" /></td>
					<td><c:out value="${p.contact}" /></td>
					<td><c:out value="${p.age}" /></td>
					<td><c:out value="${p.email}" /></td>
					<td><a href="deletePassenger?id=<c:out value='${p.pId}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<a href="Register">Confirm</a>
	</div>
	</div>
</body>
</html>