error id: file://<HOME>/Documentos/Beca%20Java%20Skill%20Banco%20de%20Chile/Estudio%20SPRING/cores/Core%20Canciones/canciones/src/main/java/com/karen/canciones/controladores/ControladorCanciones.java:_empty_/HttpSession#getAttribute#
file://<HOME>/Documentos/Beca%20Java%20Skill%20Banco%20de%20Chile/Estudio%20SPRING/cores/Core%20Canciones/canciones/src/main/java/com/karen/canciones/controladores/ControladorCanciones.java
empty definition using pc, found symbol in pc: _empty_/HttpSession#getAttribute#
empty definition using semanticdb
empty definition using fallback
non-local guesses:

offset: 1951
uri: file://<HOME>/Documentos/Beca%20Java%20Skill%20Banco%20de%20Chile/Estudio%20SPRING/cores/Core%20Canciones/canciones/src/main/java/com/karen/canciones/controladores/ControladorCanciones.java
text:
```scala
package com.karen.canciones.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.karen.canciones.models.Cancion;
import com.karen.canciones.servicios.ServicioCanciones;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;


    @Controller
public class ControladorCanciones {

	@Autowired
	private ServicioCanciones servicio;

	@GetMapping("/canciones")
	public String desplegarCanciones(Model model) {
		model.addAttribute("listaCanciones", servicio.obtenerTodasLasCanciones());
		return "canciones.jsp";
	}
	
	@GetMapping("/canciones/detalle/{idCancion}")
	public String desplegarDetalleCancion(@PathVariable("idCancion") Long idCancion, Model model) {
		Cancion cancion = servicio.obtenerCancionPorId(idCancion);
		model.addAttribute("cancion",cancion);
		return "detalleCancion.jsp";
	}
	
	@GetMapping("/canciones/formulario/agregar")
	public String formularioAgregarCancion(@ModelAttribute("cancion")Cancion cancion) {
		return "agregarCancion.jsp";
	}
	
	@PostMapping("/canciones/procesa/agregar")
	public String procesarAgregarCancion(@Valid @ModelAttribute("cancion") Cancion cancion, BindingResult result) {
		if (result.hasErrors()) {
			return "agregarCancion.jsp";
		}
		servicio.agregarCancion(cancion);
		return "redirect:/canciones";
	}

	@GetMapping("/canciones/formulario/editar/{idCancion}")
	public String formEditar(@PathVariable("idCancion") Long id, HttpSession sesion, Model modelo) {

		Cancion c = (Cancion) sesion.getAttrib@@ute("cancion");
		if (c == null) {
			return "redirect:/canciones";
		}
		modelo.addAttribute("cancion", servicio.obtenerCancionPorId());
		return "editarCancion.jsp";
		}

	@PutMapping("/edit")
	public String editar(@Valid @ModelAttribute("videojuego") Videojuego videojuego, BindingResult validaciones) {

		if (validaciones.hasErrors()) {
			return "editar.jsp";
		}
		this.servicioVideojuegos.crearModificarVideojuego(videojuego);
		return "redirect:/getAll";
	}



}

```


#### Short summary: 

empty definition using pc, found symbol in pc: _empty_/HttpSession#getAttribute#