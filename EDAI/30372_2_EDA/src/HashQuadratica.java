


	public class HashQuadratica<T>{
		

		int tamanhoHash;
		String[] Hash;
		int iterar = 1 ; // para os diferentes casos de colisao
		int primo = 31;
		int palavrasins = 0;


		public HashQuadratica(int tamanho){
			tamanhoHash = tamanho;
			Hash = new String[tamanho];
			for(int i = 0 ; i < tamanho;i ++){
					Hash[i] = null;		
			}

		}
		public String[] getHash(){
			return Hash;
		}
		
		public int FuncaoHash(String palavra){
			int valor = 0;	
			for (int i = 0; i < palavra.length(); i++ ){
				valor = (primo * valor + palavra.charAt(i)) % tamanhoHash;
				//System.out.println(primo * valor + palavra.charAt(i));
				//System.out.println((primo * valor + palavra.charAt(i)) % tamanhoHash);
				//System.out.println(palavra.charAt(i));
			}
			//System.out.println("valor:"+valor);
			return valor;
		}

		public void insereHash(String s){		
			int temp = FuncaoHash(s);
			//System.out.println("divid:"+tamanhoHash / 2);
			//System.out.println("palavrasins:"+palavrasins);
			if(palavrasins <= tamanhoHash/2){
				if (Hash[temp] == null){ // se nao estiver ocupado insere
					Hash[temp] = s;
					//System.out.println(s +" foi inserida em"+temp);
					palavrasins++;
				 }
				else{
					//System.out.println("#########################COLISAO##########################3");
					//System.out.println(s +" quis ser inserida em"+temp);
					iterar = 1;
					insereHashQuadra(s,temp);//fazer o hash desejado se ainda nao ta metade preenchida mas tem colisao 
				}
			}
			else{
				//System.out.println("Posicao ocupadaaaaaa");
				recriar();
				insereHash(s);
				
				//insereHashLinear(s,temp);
				
			}
		}

		public void insereHashQuadra(String s,int anterior){
			//System.out.println("onde ta a tentar por:"+(anterior+(iterar*iterar)) % tamanhoHash);
			//System.out.println("tamanho Hash : "+ tamanhoHash);
			if (Hash[(anterior+(iterar*iterar)) % tamanhoHash] == null){
				Hash[(anterior+(iterar*iterar)) % tamanhoHash] = s;
				palavrasins++;
			//System.out.println(s +"foi inserida em "+((anterior+(iterar*iterar)) % tamanhoHash)+"depois da colisao");
				
			}

			else{
				iterar++;
				insereHashQuadra(s,anterior);
				//System.out.println(s+" ainda nao conseguiu");
			}
		}

		public int procPos(String word){
				int valor = FuncaoHash(word);
				while(Hash[valor] != null){
					//System.out.println("entrou");
					if(Hash[valor].equals(word)){
						//System.out.println(word+" encontrada na posicao "+valor);
						return valor;
					}
					
					//verificar o proximo index
					valor++;
					
					//se chegarmos ao final do array, voltamos ao zero
					valor %= tamanhoHash;	
				//caso nao tenho encontrado		

				}	
				return -1;
			
		}
		
		public boolean procurar(String s){
			int devolve = procPos(s);
			if (devolve == -1){
				return false;
			}
			else
				return true;
			
		}
			
		
		public void recriar(){
			//System.out.println("entrou no recriar");
			String[] hash_anterior = Hash;
			int tamanho_anterior = tamanhoHash; 
			int novo_tamanho = tamanhoHash *2;
			//System.out.println("novo_tamanho"+novo_tamanho);
			//System.out.println("TamahnhoHAshNOVA"+proximoPrimo(novo_tamanho));
			tamanhoHash = proximoPrimo(novo_tamanho);
			palavrasins= 0;
			
			Hash = new String[tamanhoHash];
			for(int a= 0; a< tamanhoHash; a++){
				Hash[a]= null;
			}
			for(int b=0;b<tamanho_anterior;b++){
				if(hash_anterior[b] != null){
					insereHash(hash_anterior[b]);
				}
			}
			/*
			for(int c = 0;c<tamanhoHash;c++){
				//System.out.println("hash depois de recriada:"+Hash[c]);
			}*/
			
		}


		public int getTamanhoHash() {
			return tamanhoHash;
		}

		public void setTamanhoHash(int tamanhoHash) {
			this.tamanhoHash = tamanhoHash;
		}
		
		
		private int proximoPrimo(int n) {

	        if (n % 2 == 0) {
	            n++;
	        }
	        for (; !ePrimo(n); n += 2) {
	            ;
	        }

	        return n;
	    }

	    private boolean ePrimo(int n) {

	        if (n == 2 || n == 3) {
	            return true;
	        }
	        if (n == 1 || n % 2 == 0) {
	            return false;
	        }
	        for (int i = 3; i * i <= n; i += 2) {
	            if (n % i == 0) {
	                return false;
	            }
	        }
	        return true;
	    }

		public void print() {
			System.out.println("**HashQuadratica**");
	        for (int i = 0; i < tamanhoHash; i++) {
	            if (Hash[i] != null) {
	                System.out.println("Hash:"+ " "+Hash[i]+" posi:"+i);
	            }
	        }
	    }
	}

