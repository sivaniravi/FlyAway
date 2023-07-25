<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
  display:"flex";
  justify-content:center;
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
.payment{
background-color: #6699CC;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
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
	<div class="container" align="center">
	<br><br><br><br><br><br><br><br><br>
		<h2>Summary Details</h2>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<form action="PaymentPage.jsp" method="post">
			<table border="1" id="details">
					<tr>
						<th>Flight Number :</th>
						<td><c:out value="${f.flightNumber}" /></td>
					</tr>
					<tr>
						<th>Flight Name :</th>
						<td><c:out value="${f.airline}" /></td>
					</tr>
					<tr>
						<th>Flight From :</th>
						<td><c:out value="${f.origin}" /></td>
					</tr>
					<tr>
						<th>Flight To :</th>
						<td><c:out value="${f.target}" /></td>
					</tr>
					<tr>
						<th>Flight Boarding Date :</th>
						<td><c:out value="${f.dob}" /></td>
					</tr>
					<tr>
						<th>Ticket Price :</th>
						<td><c:out value="${f.price * n}" /></td>
					</tr>
			</table>
			<input type="submit" class="payment" value="Payment">
		</form>
	</div>
	</div>
</body>
</html>