<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>VER ENCUESTAS</title>
</head>
<body>
	<br><br><header align="center">
	<div>
	<h1>Lista de encuestas</h1><br>
	</div>
	<div align="left">
		<a href="index.jsp"><button type="button" class="btn btn-primary">INICIO</button></a><br><br><br>
	</div>
	</header>
	<section align="center">
	<div>
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Grupo ID</th>
				<!-- 			<td>Pregunta 1</td> -->
				<!-- 			<td>Pregunta 2</td> -->
				<!-- 			<td>Pregunta 3</td> -->
				<!-- 			<td>Pregunta 4</td> -->
				<!-- 			<td>Pregunta 5</td> -->
				<!-- 			<td>Pregunta 6</td> -->
				<!-- 			<td>Pregunta 7</td> -->
				<!-- 			<td>Pregunta 8</td> -->
				<!-- 			<td>Pregunta 9</td> -->
				<th scope="col">Total</th>
				<th scope="col">Comentarios</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="encuesta" items="${encuestas}">
				<tr>
					<th scope="row"><c:out value="${encuesta.grupoID}" /></th>
					<%-- 				<td><c:out value="${encuesta.ask1}" /></td> --%>
					<%-- 				<td><c:out value="${encuesta.ask2}" /></td> --%>
					<%-- 				<td><c:out value="${encuesta.ask3}" /></td> --%>
					<%-- 				<td><c:out value="${encuesta.ask4}" /></td> --%>
					<%-- 				<td><c:out value="${encuesta.ask5}" /></td> --%>
					<%-- 				<td><c:out value="${encuesta.ask6}" /></td> --%>
					<%-- 				<td><c:out value="${encuesta.ask7}" /></td> --%>
					<%-- 				<td><c:out value="${encuesta.ask8}" /></td> --%>
					<%-- 				<td><c:out value="${encuesta.ask9}" /></td> --%>
					<td><c:out value="${encuesta.total}" /></td>
					<td><c:out value="${encuesta.comentarios}" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	</section>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>