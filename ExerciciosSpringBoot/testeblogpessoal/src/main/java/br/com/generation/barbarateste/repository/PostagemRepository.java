package br.com.generation.barbarateste.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.generation.barbarateste.model.postagem;

public interface PostagemRepository extends JpaRepository <postagem, Long>{
	
	public List <postagem> findAllByTituloContainingIgnoreCase(String titulo);


	
}
