package org.generation.blogpessoal.repository;

import java.util.List;

import org.generation.blogpessoal.model.postagem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostagemRepository extends JpaRepository<postagem, Long> {
	
	//findAll --> busca Containing --> Like mysql IgnoreCase --> Não considera maisculo ou minusculo
	public List<postagem>findAllByTituloContainingIgnoreCase(String titulo); 

}
