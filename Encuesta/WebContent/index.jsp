<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>INICIO</title>
</head>
<body>
	<br><br><header align="center">
	<div>
	<h1>BIENVENIDOS</h1>
	</div>
	</header><br><br>
	<section align="center">
	<h2>Seleccione lo que desea hacer:</h2><br>
	<div>
		<a href="encuesta.jsp"><button type="button"
				class="btn btn-primary">Realizar encuesta</button></a><br> <br>
		<br>
	</div>
	<div>
		<form action="AdminEncuesta" method="get">
			<input type="submit" class="btn btn-primary" value="Ver encuestas">
		</form>
	</div>
	</section>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>