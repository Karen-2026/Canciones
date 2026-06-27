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
	
	<ul>
	<li><p>Titulo de la cancion: ${cancion.titulo}</p></li>
	<li><p>Artista: ${cancion.artista}</p></li>
	<li><p>Album: ${cancion.album}</p></li>
	<li><p>Genero: ${cancion.genero}</p></li>
	<li><p>Idioma: ${cancion.idioma}</p></li>
	<li><a href="/canciones/formulario/editar/${cancion.id}">Editar cancion</a></li>
	
	<li>
    
		<form action="/canciones/eliminar/${cancion.id}" method="POST">
        	<input type="hidden" name="_method" value="DELETE" />
        	<input type="submit" value="Eliminar cancion" />
    	</form>
	</li>
  	
	<li><a href="/canciones">Volver a la lista de canciones</a></li>
	</ul>
</body>
</html>

