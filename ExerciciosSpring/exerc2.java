package br.com.generation.barbarateste1.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/bateste2")
public class exerc2 {
	
	@GetMapping
	public String batest2() {
		return"Realizar mais exercícios com spring.";
	}

}
