package com.karen.canciones.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.karen.canciones.models.Cancion;


    @Repository
public interface RepositorioCanciones extends CrudRepository<Cancion, Long>{

	List<Cancion> findAll();
}

