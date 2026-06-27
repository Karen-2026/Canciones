error id: file://<HOME>/Documentos/Beca%20Java%20Skill%20Banco%20de%20Chile/Estudio%20SPRING/cores/Core%20Canciones/canciones/src/main/java/com/karen/canciones/models/Cancion.java:_empty_/GeneratedValue#
file://<HOME>/Documentos/Beca%20Java%20Skill%20Banco%20de%20Chile/Estudio%20SPRING/cores/Core%20Canciones/canciones/src/main/java/com/karen/canciones/models/Cancion.java
empty definition using pc, found symbol in pc: _empty_/GeneratedValue#
empty definition using semanticdb
empty definition using fallback
non-local guesses:

offset: 494
uri: file://<HOME>/Documentos/Beca%20Java%20Skill%20Banco%20de%20Chile/Estudio%20SPRING/cores/Core%20Canciones/canciones/src/main/java/com/karen/canciones/models/Cancion.java
text:
```scala
package com.karen.canciones.models;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Size;

@Table
@Entity
public class Cancion {
   
	@Id
	@Genera@@tedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Size(min = 5, message= "Al menos 5 caracteres de longitud")
	private String titulo;
	
	@Size(min = 3, message= "Al menos 3 caracteres de longitud")
	private String artista;
	
	@Size(min = 3, message= "Al menos 3 caracteres de longitud")
	private String album;
	
	@Size(min = 3, message= "Al menos 3 caracteres de longitud")
	private String genero;
	
	@Size(min = 3, message= "Al menos 3 caracteres de longitud")
	private String idioma;
	
    @CreationTimestamp
    @Column(name = "fecha_creacion", updatable = false)
	private LocalDateTime fechaCreacion;
	
	@UpdateTimestamp
	@Column(name = "fecha_actualizacion")
	private LocalDateTime fechaActualizacion;

    public Cancion() {
	}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getArtista() {
        return artista;
    }

    public void setArtista(String artista) {
        this.artista = artista;
    }

    public String getAlbum() {
        return album;
    }

    public void setAlbum(String album) {
        this.album = album;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public LocalDateTime getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(LocalDateTime fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public LocalDateTime getFechaActualizacion() {
        return fechaActualizacion;
    }

    public void setFechaActualizacion(LocalDateTime fechaActualizacion) {
        this.fechaActualizacion = fechaActualizacion;
    }
	
    

}

```


#### Short summary: 

empty definition using pc, found symbol in pc: _empty_/GeneratedValue#