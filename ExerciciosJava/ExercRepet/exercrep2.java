import java.util.Scanner;

public class exercrep2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int impri = 1, pares = 0, impar = 0, num;
		
		Scanner leitura = new Scanner(System.in);
		
		for(;impri <=10; impri++) {
			
			System.out.println("\nDigite um número: ");
			num = leitura.nextInt();
			
			if(num % 2 == 0 ) {
				pares = pares + 1;
				
				
			}
			
			else{
				impar = impar + 1;
				
			}
			 System.out.println("\nO total de números pares é : " + pares);
		        System.out.println("\nO total de número impares é : " + impar);
		        leitura.close();
			
		}
		

	}

}
