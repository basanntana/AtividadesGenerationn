package br.com.generation.barbarateste1.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/bateste")
public class exerc1 {
    
	@GetMapping
	public String bateste(){
		return "Para concluir a atividade, usei a habilidade de atenção as detalhe no momento da explicação,"
				+ "e a mentalidade de persistência.";
		
	}
}
