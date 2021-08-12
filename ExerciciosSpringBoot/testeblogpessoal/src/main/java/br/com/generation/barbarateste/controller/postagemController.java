package br.com.generation.barbarateste.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.generation.barbarateste.model.postagem;
import br.com.generation.barbarateste.repository.PostagemRepository;

@RestController
@RequestMapping("/postagens")
@CrossOrigin(origins = "*", allowedHeaders ="*")
public class postagemController {
	
	@Autowired
	private PostagemRepository postagemRepository;
	
	
	@GetMapping
	public ResponseEntity<List<postagem>> getAll (){
		return ResponseEntity.ok(postagemRepository.findAll()); 
		
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<postagem> getById(@PathVariable long id) {
		return postagemRepository.findById(id)
			.map(resp -> ResponseEntity.ok(resp))
			.orElse(ResponseEntity.notFound().build());
	}
	
	@GetMapping("/titulo/{titulo}")
	public ResponseEntity<List<postagem>> getByTitulo(@PathVariable String titulo){
		return ResponseEntity.ok(postagemRepository.findAllByTituloContainingIgnoreCase(titulo));
	}
	@PostMapping
	public ResponseEntity<postagem> postPostagem (@RequestBody postagem postagem){
		return ResponseEntity.status(HttpStatus.CREATED).body(postagemRepository.save(postagem));
	}
	@PutMapping
	public ResponseEntity<postagem> putPostagem (@RequestBody postagem postagem){
		return ResponseEntity.status(HttpStatus.OK).body(postagemRepository.save(postagem));
	}
	@DeleteMapping
	public void deletePostagem(@PathVariable long id) {
		postagemRepository.deleteById(id);
	}	
	
	
}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
