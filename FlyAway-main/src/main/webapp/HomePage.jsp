<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FLYAWAY.COM</title>
<style type="text/css">

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

.search{
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
		<a href="AdminLogin.jsp">Admin</a> <br>
		<br><br><br>
		<form action="passenger" method="post">
			<table border="2" cellpadding="5" postion="bottom" id="details">
				<tr>
					<th>Origin :</th>
					<td><input type="text" name="origin" size="45" required>
					</td>
				</tr>
				<tr>
					<th>Destination :</th>
					<td><input type="text" name="target" size="45" required>
					</td>
				</tr>
				<tr>
					<th>Boarding Date :</th>
					<td><input type="date" name="date" size="45" required>
					</td>
				</tr>
				<tr>
					<th>Persons :</th>
					<td><input type="number" name="qty" size="45" required>
					</td>
				</tr>
			</table>
			<input type="submit"  class="search" value="Search">
		</form>
	</div>
	</div>
</body>
</html>