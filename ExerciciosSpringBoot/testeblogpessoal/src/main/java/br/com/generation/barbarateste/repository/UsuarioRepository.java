package br.com.generation.barbarateste.repository;


import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.generation.barbarateste.model.usuario;

@Repository
public interface UsuarioRepository extends JpaRepository<usuario, Long>  {
	
	public Optional<usuario> findByUsuario(String usuario);

	public List<usuario> findAllByNomeContainingIgnoreCase(String nome);

	public usuario findByNome(String nome);
	
	

}
