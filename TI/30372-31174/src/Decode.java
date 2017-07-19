import java.io.*;

public class Decode{
	public static Simbolo[] probabilidades;

	
	public static void main(String args[]){
		BufferedReader bfr=null;
		BufferedWriter bwr=null;
		String txt="";
		String textoDescod="";


				//le o texto com o bufferReader
		
		txt=dclerTexto(bfr,txt);   // txt tem o texto do ficheiro ASmall

		Hamming hamming= new Hamming();		//cria o hamming
		String txtDecodedHamming = hamming.descodificaHamm(txt);       //Descodifica o texto com o hammig
		// falta tirar os 0's a mais
		// e ver se ha erro
		
		probabilidades=new Simbolo[4];

		probs(probabilidades);//cria os simbolos

		ShannonFanoElias shanno=new ShannonFanoElias(txtDecodedHamming, probabilidades, 4);

		textoDescod=shanno.descodificaSha();

		escreveFile(bwr, textoDescod);
		System.out.println("FIM");

	}

	public static String dclerTexto(BufferedReader br, String tex){
		//le o texto da fonte
		
		try{
			br=new BufferedReader(new FileReader("bits-output.txt"));
			String temp = br.readLine();
			while(temp!=null){
				tex+=temp;
				temp=br.readLine();

			}
			br.close();
		}
		catch(IOException io){
			System.out.println("Nao existe o bits bits-output");
			System.out.println(io.getMessage());
		}
		return tex;
	}

	static void escreveFile(BufferedWriter bwr, String texto){
		File newFile = new File("seq-output.txt");
		if (newFile.exists()){	
			System.out.println("seq-output ja existe");
			System.out.println("Ficheiro nao criado");
		}
		else{
			try{
				newFile.createNewFile();
			}
			catch(Exception e){
				System.out.println("cathhh");
				e.printStackTrace();
			}
			try{
				FileWriter filew=new FileWriter(newFile);
				bwr=new BufferedWriter(filew);
				bwr.write(texto);
				bwr.close();
				System.out.println("ficheiro seq-output criado ");
			}
			catch(Exception e){
				
				e.printStackTrace();
			}
		}
		
	}

	public static void probs(Simbolo[] si){
		String letras[]={"A","C","G","T"};
		double probabdds[]={(2374/11008.0),(2874/11008.0),(3088/11008.0),(2672/11008.0)};
		
		for (int i=0; i<4; i++) {
			si[i]=new Simbolo(letras[i],probabdds[i]);			
		}

	}

	

}