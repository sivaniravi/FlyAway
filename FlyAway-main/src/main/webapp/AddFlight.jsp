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
  <div class="container" align="center">
		<c:if test="${f != null}">
			<form action="update" method="post">
		</c:if>
		<c:if test="${f == null}">
			<form action="insert" method="post">
		</c:if>
		<table border="1" cellpadding="5" id="details">
			<c:if test="${f != null}">
				<input type="hidden" name="fid"
					value="<c:out value='${f.flightId}' />" />
			</c:if>
			<tr>
				<th>Flight Number :</th>
				<td><input type="number" name="fnumber" size="45"
					value="<c:out value='${f.flightNumber}' />" required /></td>
			</tr>
			<tr>
				<th>Airline :</th>
				<td><input type="text" name="fname" size="45"
					value="<c:out value='${f.airline}' />" required /></td>
			</tr>
			<tr>
				<th>Origin :</th>
				<td><input type="text" name="forigin" size="45"
					value="<c:out value='${f.origin}' />" required /></td>
			</tr>
			<tr>
				<th>Destination :</th>
				<td><input type="text" name="ftarget" size="45"
					value="<c:out value='${f.target}' />" required /></td>
			</tr>
			<tr>
				<th>Flight Date :</th>
				<td><input type="date" name="fdate" size="45"
					value="<c:out value='${f.dob}' />" required /></td>
			</tr>
			<tr>
				<th>Ticket Price :</th>
				<td><input type="number" name="fprice" size="45"
					value="<c:out value='${f.price}' />" required /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Save" /></td>
			</tr>
		</table>
		</form>
		</div>
	</div>
</body>
</html>