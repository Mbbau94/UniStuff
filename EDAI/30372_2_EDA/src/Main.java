


import java.io.*;


public class Main {

		


	public static void main(String[] args) throws IOException {
		//System.out.println("bora la "); 
		// speelchecker abre o ficheiro do dicionario
		SpellChecker Sc = new SpellChecker("wordlist-ao-20101027.txt","errorFile","fileAcorrigir.txt");
		
		HashQuadratica<String> hqDic = Sc.getHashTable();//cria a tabela de hash com o dicionario
		
		System.out.println("Hash table com dicionario criado");

		// vamos chamar o spellCheck para corrigir o fileAcorrigir.txt
		
		Sc.spellCheck("fileAcorrigir.txt");
	
		//ja conseguimos ler do fichiro a corrigir
		//separar palavra a palavra 
		//ver/corrigir a palavra
		System.out.println("Sugestoes criadas e escritas no ficheiro");
		
		//falta nao imprimir os nulls
		//
		
		
	}
		
}



