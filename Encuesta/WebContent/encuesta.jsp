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
<style type="text/css">
body {
	margin-left: 10px;
	margin-right: 10px;
	margin-top: 5px;
	margin-bottom: 5px;
}
</style>
<title>FORMULARIO</title>
</head>
<body>
	<br>
	<header align="center">
	<div class="container">
		<div class="row">
			<div class="col-2">
				<a href="index.jsp"><button type="button"
						class="btn btn-primary">INICIO</button></a>
			</div>
			<div class="col-8" >
				<h1>FORMULARIO ENCUESTA</h1>
			</div>
		</div>
	</header>
	<section align="center">
	<div>
		<form action="AdminEncuesta" method="post">
			<div align="center">
				<table class="table">
					<th scope="row">Grupo a evaluar</th>
					<td><input type="text" name="grupoID"></td>
				</table>
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">Contenido</th>
						<th scope="col">Totalmente en desacuerdo</th>
						<th scope="col">En desacuerdo</th>
						<th scope="col">De acuerdo</th>
						<th scope="col">Totalmente de acuerdo</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">La página se carga de forma rápida.</th>
						<td><input type="radio" name="ask1" value="1"></td>
						<td><input type="radio" name="ask1" value="2"></td>
						<td><input type="radio" name="ask1" value="3"></td>
						<td><input type="radio" name="ask1" value="4"></td>
					</tr>
					<tr>
						<th scope="row">La página transmite la idea del proyecto.</th>
						<td><input type="radio" name="ask2" value="1"></td>
						<td><input type="radio" name="ask2" value="2"></td>
						<td><input type="radio" name="ask2" value="3"></td>
						<td><input type="radio" name="ask2" value="4"></td>
					</tr>
					<tr>
						<th scope="row">Es fácil encontrar los contenidos.</th>
						<td><input type="radio" name="ask3" value="1"></td>
						<td><input type="radio" name="ask3" value="2"></td>
						<td><input type="radio" name="ask3" value="3"></td>
						<td><input type="radio" name="ask3" value="4"></td>
					</tr>
					<tr>
						<th scope="row">Los contenidos multimedia contribuyen a
							reforzar el mensaje de la página.</th>
						<td><input type="radio" name="ask4" value="1"></td>
						<td><input type="radio" name="ask4" value="2"></td>
						<td><input type="radio" name="ask4" value="3"></td>
						<td><input type="radio" name="ask4" value="4"></td>
					</tr>
					<tr>
						<th scope="row">La página cuenta con opciones de
							accesibilidad y usabilidad.</th>
						<td><input type="radio" name="ask5" value="1"></td>
						<td><input type="radio" name="ask5" value="2"></td>
						<td><input type="radio" name="ask5" value="3"></td>
						<td><input type="radio" name="ask5" value="4"></td>
					</tr>
					<tr>
						<th scope="row">El diseño de la página es bueno.</th>
						<td><input type="radio" name="ask6" value="1"></td>
						<td><input type="radio" name="ask6" value="2"></td>
						<td><input type="radio" name="ask6" value="3"></td>
						<td><input type="radio" name="ask6" value="4"></td>
					</tr>
					<tr>
						<th scope="row">La seguridad de la pagina es adecuada.</th>
						<td><input type="radio" name="ask7" value="1"></td>
						<td><input type="radio" name="ask7" value="2"></td>
						<td><input type="radio" name="ask7" value="3"></td>
						<td><input type="radio" name="ask7" value="4"></td>
					</tr>
					<tr>
						<th scope="row">La creatividad mostrada es buena.</th>
						<td><input type="radio" name="ask8" value="1"></td>
						<td><input type="radio" name="ask8" value="2"></td>
						<td><input type="radio" name="ask8" value="3"></td>
						<td><input type="radio" name="ask8" value="4"></td>
					</tr>
					<tr>
						<th scope="row">La presentacion del proyecto fue buena.</th>
						<td><input type="radio" name="ask9" value="1"></td>
						<td><input type="radio" name="ask9" value="2"></td>
						<td><input type="radio" name="ask9" value="3"></td>
						<td><input type="radio" name="ask9" value="4"></td>
					</tr>
				</tbody>
			</table>
			<table class="table table-striped">
				<th scope="row">Consejos para mejorar el proyecto.</th>
				<td><textarea rows="5" cols="150" name="comentarios"></textarea></td>
			</table>
			<input type="submit" class="btn btn-success" value="Enviar">
		</form>
	</div>
	</section>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>