package br.com.generation.barbarateste.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.generation.barbarateste.model.tema;

@Repository
public interface TemaRepository extends JpaRepository<tema, Long> {
	
	public List<tema> findAllByDescricaoContainingIgnoreCase(String descricao);

}
