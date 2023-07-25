<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<div  class="container" align="center">
		<h2>Reset Password</h2>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<br><br>
		<form action="reset" method="post">
			<table border="2" cellpadding="5" postion="bottom" id="details">
				<tr>
					<th>Enter new Password :</th>
					<td><input type="password" name="newpwd" size="45" required>
					</td>
				</tr>
				<tr>
					<th>Confirm Password :</th>
					<td><input type="password" name="confpwd" size="45" required>
					</td>
				</tr>
			</table>
			<input type="submit" value="Save">
		</form>
	</div>
	</div>
</body>
</html>