<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar cancion</title>
  
</head>
<body>
   <h1>Editar Cancion</h1>
   <form:form action="/canciones/procesa/editar/${cancion.id}" method="POST" modelAttribute="cancion">
        <input type="hidden" name="_method" value="PUT" >
       
        <input type="hidden" value="${cancion.id}" name="id" />
        
        <form:label path="titulo">Titulo:</form:label>
        <form:input type="text" path="titulo"/>
        <form:errors path="titulo"/>

        <form:label path="artista">Artista:</form:label>
        <form:input type="text" path="artista"/>
        <form:errors path="artista"/>

        <form:label path="album">Album:</form:label>
        <form:input type="text" path="album"/>
        <form:errors path="album"/>

        <form:label path="genero">Genero:</form:label>
        <form:input type="text" path="genero"/>
        <form:errors path="genero"/>

        <form:label path="idioma">Idioma:</form:label>
        <form:input type="text" path="idioma"/>
        <form:errors path="idioma"/>

        <input type="submit" value="Guardar cambios">
        
   </form:form>
   <a href="/canciones">Volver a la lista de canciones</a>
</body>
</html>