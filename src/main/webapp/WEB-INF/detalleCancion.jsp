<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle canciones</title>
</head>
<body>
	<h1>Detalle</h1>
	<p>Titulo de la cancion: ${cancion.titulo}</p>
	<p>Artista: ${cancion.artista}</p>
	<p>Album: ${cancion.album}</p>
	<p>Genero: ${cancion.genero}</p>
	<p>Idioma: ${cancion.idioma}</p>
	<a href="/canciones/formulario/editar/${cancion.id}">Editar cancion</a>
	<a href="/canciones">Volver a la lista de canciones</a>
</body>
</html>

