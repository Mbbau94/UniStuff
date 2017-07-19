import java.io.*; // bufferedRedader, bufferedWriter, File, Filewriter

public class Code{
	public static Simbolo[] probabilidades;
	public static String textoCompr;

	public static void main(String args[]){

		BufferedReader br=null;
		BufferedWriter bwr=null;
		String textoOrig=""; 

		
		textoOrig = lerTexto(br,textoOrig); //texto da fonte

		//System.out.println(textoOrig);

		probabilidades=new Simbolo[4];

		probs(probabilidades); // mete as probabilidades

		ShannonFanoElias shanno=new ShannonFanoElias(textoOrig,probabilidades,4);

		textoCompr=shanno.codificaTexto();
		//System.out.println(textoCompr);
		String[][] tabCodigos= shanno.getTabelaCodigo();

		//System.out.println(textoCompr);
		
		Hamming hamming= new Hamming(tabCodigos);

		String textoHcodif= hamming.codificaHamming(textoCompr);
		System.out.println("texto codificado");

		escreveFile(bwr, textoHcodif);

		System.out.println("FIM");

		//System.out.println(textoHcodif);
	}//main

	public static String lerTexto(BufferedReader br, String texto){
		//le o texto da fonte
		try{
			br=new BufferedReader(new FileReader("AF059675.txt"));
			String tempe = br.readLine();
			while(tempe!=null){
				texto+=tempe;
				tempe=br.readLine();

			}
			br.close();
		}
		catch(IOException io){
			System.out.println(io.getMessage());
		}
		return texto;
	}

	static void escreveFile(BufferedWriter bw, String texto){
		File newFile = new File("bits-input.txt");
		if (newFile.exists()){ 
			System.out.println("bits-input.txt já existe, elimine");
			System.out.println("Ficheiro nao criado");
		}else{
			try{
				newFile.createNewFile();
			}
			catch(Exception e){
				e.printStackTrace();
			}
			try{
				FileWriter filew=new FileWriter(newFile);
				bw=new BufferedWriter(filew);
				bw.write(texto);
				bw.close();
				System.out.println("ficheiro bits-input criado");
			}
			catch(Exception e){
				e.printStackTrace();
			}
		}
		
	}

	//
	public static void probs(Simbolo[] si){
		String letras[]={"A","C","G","T"};
		double probabdds[]={(2374/11008.0),(2874/11008.0),(3088/11008.0),(2672/11008.0)};
		
		for (int i=0; i<4; i++) {
			si[i]=new Simbolo(letras[i],probabdds[i]);			
		}

	}


}//class
