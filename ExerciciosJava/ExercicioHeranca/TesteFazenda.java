package heranca.exerc;

import generation.heranca.Aluno;
import generation.heranca.FuncAdm;
import generation.heranca.Professor;

public class TesteFazenda{
	
	public static void main(String[] args) {
		
		cachorro cach1 = new cachorro();
		cavalo caval1 = new cavalo();
		preguica pregui1 = new preguica();
		
		cach1.setCor("Preto");
		caval1.setPelo("Alazão");
		pregui1.setNome("Bolt");
		pregui1.setAlimento("Maçã");

		caval1.setPorte("Grande"); /// --> SET Ele modifica o atributo

		       System.out.println("Nome do bicho preguica " + pregui1.getNome()); // --> GET Recupera o dado
				
				
				System.out.println("|====Dados dos seu bichinho====|");
				
				System.out.println("Cor " + cach1.getCor());
				System.out.println("Pelo: " + caval1.getPelo());
		
		
		
		
		
		
		
		
		
	}
	
	
	
	
}

