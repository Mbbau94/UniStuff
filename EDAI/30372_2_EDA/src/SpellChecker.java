import java.io.*;

public class SpellChecker {

	private String errorFile;
	private int lineCnt;
	private File file;
	private File fileAcorrigir;
	private FileInputStream fis;
	private HashQuadratica<String> dicHashTb;
	private Hash_Linear<Palavra> sugHashtb;

	Linkedlist<String> listBadWord;
	

	
	public SpellChecker(String dictFile, String errorFile, String docFile){
		this.file = new File(dictFile);
		this.errorFile=errorFile;
		
		try {
			fis = new FileInputStream(file);
		} catch (FileNotFoundException e) {
			System.out.println("ficheiro n encontrado");
			e.printStackTrace();
		}
		System.out.println("ficheiro aberto ");
	}
	
	//corre o ficheiro docFile , file a ser corrigido
	//gera uma tabela hash com os erros e sugestoes
	
	public void spellCheck(String docFile) throws IOException{

		
		fileAcorrigir = new File(docFile);
		
		try {
			fis = new FileInputStream(docFile);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		DataInputStream iN = new DataInputStream(fis);
		BufferedReader bR = new BufferedReader(new InputStreamReader(iN));
		String strLine= "";
		lineCnt = 0;
		String bufferError="";
		while ((strLine = bR.readLine()) != null) {

			strLine = strLine.replace("\r\n", " ");
			lineCnt++;
			bufferError+=strLine;
		}
		
		//System.out.println("a crrigir "+bufferError+ "\n");
		
		// tratar do String buffer
		//criar a hash table com as palavras
		String[] wordTemp = bufferError.split(" ");
		
		sugHashtb = new Hash_Linear<Palavra>(10000);
		listBadWord = new Linkedlist<String>();
		for(String p : wordTemp){
			
			if(dicHashTb.procurar(p)==true){
				//System.out.println("palavra bem escrita: "+p );
			}
			else{
				//System.out.println(p+ " :palavra mal escrita");
				//sugHashtb.insereHash(p);
				listBadWord.add(p);
				
				
				
			}
		}
		//System.out.println("anttes criar sug /n");
		//System.out.println(listBadWord.toString());
		criarSugestoes();
		//System.out.println(sugHashtb);
		System.out.println("tamanho da hash: "+sugHashtb.getNItens());

		geraFicheiro(sugHashtb,errorFile);
		
		//System.out.println("criar depois \n ");
		
		
	}
	
	
	public void geraFicheiro(HashTable<Palavra>sugestes, String errorFile) throws IOException{
		String z = "\t\t\t ficheiro com sugestoes \n";
		BufferedWriter fileInput = new BufferedWriter(new FileWriter(errorFile+".txt"));
		fileInput.write(z);
		fileInput.write("\n");
		//fileInput.write(sugestes.getNItens()+"\n");
		fileInput.write("\n");
		
		for (int i = 0; i < sugestes.size; i++){	
			if ( sugestes.getEle(i) != null){
				//System.out.println("for if n: "+i);
				Palavra p = sugestes.getEle(i).getElement();
				
				fileInput.write("palavra errada: "+ p.getIncorreta()+"\n");
				fileInput.write("Sugestoes: "+"\n");
				
				
				fileInput.write(p.getSugestoes().toString()+"\n");
				fileInput.write("\n");
			}
		
		}
		fileInput.close();
	}
	
	public void criarSugestoes(){
		//criar hash table com as "palavras"
		//System.out.println("criar sugestoeeeeeees dentro");
		
		String[] teste= new String[200];
		for(int i=1;i<=listBadWord.size();i++){ // comeca no 0
			//criar uma "palavra" object para cada incorreta
			
			//System.out.println("criar sugestoes for "+ listBadWord.getT(i).getElemento());
			//palavraSug(listBadWord.getT(i).getElemento());
			Palavra p = new Palavra(listBadWord.getT(i).getElemento(),palavraSug(listBadWord.getT(i).getElemento()));
			//adicionar a hashtableSug
			//System.out.println(p.toString());
			sugHashtb.insert(p);
			
		}
		
		
		//return p;
	}

	
	
	public Linkedlist<String> palavraSug(String p){
		//System.out.println("remover inici ******\n");
		Linkedlist<String> lfinal= new Linkedlist<String>();//lista que vai ter todas as 
		
		sugRemove(p,lfinal); //lista com sugestoes com remocao
		sugInsere(p,lfinal);// mete em lfinal as sugestoes 
		sugTroca(p,lfinal);
			
		//criar as sugestoes
		
		int index = 1;
		

		return lfinal;
	}
	
	public void sugTroca(String word, Linkedlist<String> ll){
		String[] cenas = dicHashTb.getHash();
		
		for(int i= 0;i<word.length()-1;i++){
			String s = word.substring(0,i) + word.substring(i+1);
			if (i < word.length()-1)
			{
				s = word.substring(0,i) + word.substring(i+1,i+2) + word.substring(i,i+1) + word.substring(i+2);
			
				if (dicHashTb.procurar(s))
					ll.add(s);
			}
			
		}
		
	}
	
	
	public void sugInsere(String s,Linkedlist<String> ll){
		//Linkedlist<String> ll = new Linkedlist<String>();
		String[] cenas = dicHashTb.getHash();
		
		int pos1 = 0;
		int pos2 = 0;
		int erros = 0;
		String mete;
		String[] correcoes = new String[200];
		int contador_correcoes = 0;
		int h = s.length() + 1;

		
		for(int p= 0;p<cenas.length;p++){
			if(cenas[p] != null){
				//System.out.println("cenas[p].length()"+cenas[p].length());
				//System.out.println("s.length()"+s.length() );
				if(cenas[p].length() == h){
					pos1 = 0;
					pos2 = 0;
					erros = 0;
					while((pos1 < cenas[p].length()) && (pos2 < h-1)){
						/*System.out.println("pos1:"+pos1);
						System.out.println("cenas[p].length() :"+cenas[p].length() );
						
						System.out.println("pos2:"+pos2);
						System.out.println("h:"+h);
						
						System.out.println("cenas[p].charAt(pos1)"+cenas[p].charAt(pos1));
						System.out.println("s.charAt(pos2)"+s.charAt(pos2));*/
						if(cenas[p].charAt(pos1) == s.charAt(pos2)){
							pos1++;
							pos2++;
							
						}
						else if(cenas[p].charAt(pos1) != s.charAt(pos2)){
							erros++;
							pos1++;
						}
						
						
					}
					if(s.length() == 1 && erros == 0){
						//System.out.println("palavra boa:"+cenas[p]);
						mete = cenas[p];
						correcoes[contador_correcoes] = mete;
						ll.add(mete);
						
						contador_correcoes++;
					}
					else if(erros == 1 || erros == 0){
						//System.out.println("palavra boa:"+cenas[p]);
						mete = cenas[p];
						correcoes[contador_correcoes] = mete;
						ll.add(mete);
						contador_correcoes++;
					}
				}	
			}
		}
		Palavra pa = new Palavra(s,ll);
		//System.out.println(pa.toString());
		//System.out.println(ll.toString());
		//return ll;		
	}
	
	public void sugRemove(String s,Linkedlist<String> ll){
		//System.out.println("sug removerrrrr ------");


		String[] cenas = dicHashTb.getHash();

		int pos1 = 0;
		int pos2 = 0;
		int erros = 0;
		String mete;
		String[] correcoes = new String[200];
		int contador_correcoes = 0;
		int h = s.length() -1;

		for(int p= 0;p<cenas.length;p++){
			if(cenas[p] != null){// nao ver os  nulls do array cenas
				//System.out.println("cenas[p].length()"+cenas[p].length());
				if(cenas[p].length() == h){
					pos1 = 0;
					pos2 = 0;
					erros = 0;
					while((pos1 < cenas[p].length()) && (pos2 < h+1)){
						
						if(cenas[p].charAt(pos1) == s.charAt(pos2)){
							pos1++;
							pos2++;
							
						}
						else if(cenas[p].charAt(pos1) != s.charAt(pos2)){
							erros++;
							pos2++;
						}
						
					}
					
					
					if(s.length() == 2 && erros == 0){
						//System.out.println("*--**-*--**--*-*-*-*-*-**-palavra boa: /n"+cenas[p]);
						mete = cenas[p];
						//correcoes[contador_correcoes] = mete;
						ll.add(mete);
						
						contador_correcoes++;
					}
					else if(erros == 1 || erros == 0){
						//System.out.println("**/*/*/*/*/*/*/*/*/ else palavra boa" + cenas[p]);
						mete = cenas[p];
						//correcoes[contador_correcoes] = mete;
						ll.add(mete);
						contador_correcoes++;
						
						//adicionar a sug -> mete 
					}				
				}		
			}
		}
		//System.out.println("lista com sugestoes  "+ ll.toString());
	}
	

	
	//cria a tabela de hash do dicionario e retorna a 
	
	public HashQuadratica<String> getHashTable() throws IOException{
		//System.out.println("tab hash ");
		dicHashTb = new HashQuadratica<String>(30);
		DataInputStream in = new DataInputStream(fis);
		BufferedReader br = new BufferedReader(new InputStreamReader(in));
		String strLine ;
		lineCnt = 0;
		while ((strLine = br.readLine()) != null) {
			dicHashTb.insereHash(strLine);
			lineCnt++;
		}
		//System.out.println("tab hash conclui ");
		return dicHashTb;
	}
	
	public int getLineNbr(){
		return lineCnt; 
	}
	
	
	
}
