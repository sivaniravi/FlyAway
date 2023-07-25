<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
  <div class="container">
	<h1 align="center">Flight Management</h1>
	<h2 align="center">
		<a href="add">Add Flight</a>
		&nbsp;&nbsp;&nbsp;
		<a href="ResetPage.jsp">Change Password</a>
		&nbsp;&nbsp;&nbsp;
		<a href="HomePage.jsp">Logout</a>
	</h2>
	<div align="center">
        <table border="1" id="details">
            <caption>
            	Flight Details 
            </caption>
   
            <tr>
            	<th>ID</th>
                <th>Number</th>
                <th>Air Name</th>
                <th>Origin</th>
                <th>Destination</th>
                <th>Date</th>
                <th>Booking Price</th>
                <th>Status</th>
            </tr>
            <c:forEach var="f" items="${list}">
                <tr>
                    <td><c:out value="${f.flightId}" /></td>
                    <td><c:out value="${f.flightNumber}" /></td>
                    <td><c:out value="${f.airline}" /></td>
                    <td><c:out value="${f.origin}" /></td>
                    <td><c:out value="${f.target}" /></td>
                    <td><c:out value="${f.dob}" /></td>
                    <td><c:out value="${f.price}" /></td>
                    <td>
                     <a href="edit?fid=<c:out value='${f.flightId}' />">Edit</a>
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <a href="delete?fid=<c:out value='${f.flightId}' />">Delete</a>                     
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div> 
    </div>
   </div>
</body>
</html>