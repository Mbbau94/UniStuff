import java.util.*;

class tabMain{
	public static void main(String args[]){
		
		while(true){
			System.out.println("vamos começar \n");
		
			Scanner sc= new Scanner(System.in);
			
			System.out.println("Numero do lado \n");
			int  nLado=sc.nextInt();


			System.out.println("Numero de cores diferentes \n");
			int  nCores=sc.nextInt();
			
			Tabuleiro taba = new Tabuleiro(nLado,nCores);

			System.out.println();

			//pede a peça	

			//Jogo jg = new Jogo();

			//jg.startjogo(taba);

			System.out.println("Jogar outra vez ?  1-SIM, 0-NÃO");
			int  again=sc.nextInt();
			if (again==0) {
				break;
			}
			else{
				continue;
			}

		}

	}
}
