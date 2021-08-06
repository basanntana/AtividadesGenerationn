package org.generation.blogpessoal.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Entity
@Table(name = "tb_postagem")//create table
public class postagem {
	//atributos da tabela criada banco
	@Id //Chave Primaria
	@GeneratedValue(strategy = GenerationType.IDENTITY)// Auto incremento 
	private long id;
	
	@NotNull(message = "O tributo titulo é obrigatório")
	@Size(min = 5, max = 100, message = "O atributo titulo deve contrer no mínimo 05 e no máximo 100")
	private String titulo;
	
	@NotNull(message = "O atributo texto é obrigatório")
	@Size(min = 10, max = 500, message = "O atributo textp deve conter no mínino 10 e no máximo 500")
	private String texto;
	
	@Temporal(TemporalType.TIMESTAMP)//Pegar a data e hora do sistema
	private Date date = new java.sql.Date(System.currentTimeMillis());

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	
	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
    
	
}
