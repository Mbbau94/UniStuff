import java.io.*; 
class Canal{
	
	public static void main(String args[]){
		BufferedReader br=null;
		BufferedWriter bw=null;
		String txtLido="";

		txtLido=dclerTexto(br,txtLido);

		String bf="";
		String bitsEscrever="";

		for (int i=0;i<txtLido.length();i++) {
			if(i%7==0){
				bitsEscrever=txtLido.substring(0,i); //string com 10 letras 
				System.out.println(bitsEscrever);
				System.out.println("lengg "+bitsEscrever.length());
				bf=errar(bitsEscrever); // erra(essaString)

			}
			else if (i>txtLido.length()) {
							
						}			
		}
		escreveFile(bw, bf);
		System.out.println("Atravessou o canal,FIM");
	}

	public static String errar(String s){ // ver o ultimo bit e mudar
		String alterada="";
		System.out.println("lengtr "+s.length());
		String ultimaletra=s.valueOf(s.charAt(s.length()));
		if (ultimaletra.equals("0")) {
			ultimaletra="1";
			alterada=s.substring(0,s.length()-1)+ultimaletra;
			return alterada;

		}else{
			ultimaletra="0";
			alterada=s.substring(0,s.length()-1)+ultimaletra;
			return alterada;	
		}
		
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