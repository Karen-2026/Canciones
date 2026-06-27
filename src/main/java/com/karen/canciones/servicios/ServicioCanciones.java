package com.karen.canciones.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.karen.canciones.models.Cancion;
import com.karen.canciones.repositorios.RepositorioCanciones;


    @Service
public class ServicioCanciones {

	@Autowired
	private RepositorioCanciones repoCanciones;
	
	public List<Cancion> obtenerTodasLasCanciones(){
		return this.repoCanciones.findAll();
	}
	
	public Cancion obtenerCancionPorId(Long id) {
		return repoCanciones.findById(id).orElse(null);
	}

	public Cancion agregarCancion(Cancion cancion) {
		return repoCanciones.save(cancion);
	}

	public Cancion actualizarCancion(Cancion cancion) {
        return this.repoCanciones.save(cancion);
    }

	public void eliminarCancion(Long id) {
        this.repoCanciones.deleteById(id);
	}
}

