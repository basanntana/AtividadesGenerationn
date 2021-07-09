package generation.exersequen;

public class exercsequen01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	    int idade , anos, meses, dias;
	    
	    Scanner entrada = new Scanner(System.in);
	    
	    System.out.println("Digite aqui a sua idade: ");
        idade = entrada.nextInt();
        
        dias = idade * 365;
        anos = dias / 365;
        meses = idade * 12;
        
        System.out.println("\nA sua idade expressa em dias é  : " + dias);

	}

}
