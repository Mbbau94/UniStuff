import java.io.*; 
class CaP{
	
	public static void main(String args[]){
		BufferedReader br=null;
		BufferedWriter bw=null;
		String txtLido="";

		txtLido=dclerTexto(br,txtLido);

		String bitsEscrever=txtLido;
		
		escreveFile(bw, bitsEscrever);
		System.out.println("Atravessou o canal,FIM");
	}

	public static String dclerTexto(BufferedReader br, String tex){
		//le o texto da fonte
		
		try{
			br=new BufferedReader(new FileReader("bits-input.txt"));
			String temp = br.readLine();
			while(temp!=null){
				tex+=temp;
				temp=br.readLine();

			}
			br.close();
		}
		catch(IOException io){
			System.out.println("Nao existe o bits bits-input");
			System.out.println(io.getMessage());
		}
		return tex;
	}

	static void escreveFile(BufferedWriter bw, String texto){
		File newFile = new File("bits-output.txt");
		if (newFile.exists()) 	
			System.out.println("bits-output ja existe, delete");
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
				bw=new BufferedWriter(filew);
				bw.write(texto);
				bw.close();
				System.out.println("ficheiro bits-output criado");
			}
			catch(Exception e){
				System.out.println("cathhh");
				e.printStackTrace();
			}
		}
		
	}
}