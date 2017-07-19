import java.util.*;

class Jogo{
	int score;
	Tabuleiro t;
	List<Peca> listaRemover = new ArrayList<Peca>();
	int jogada;

	public Jogo(){
	}

	public Jogo(Tabuleiro t){
		this.t=t;
		
	}

	public Tabuleiro getT(){
		return t;
	}

	public void startjogo(Tabuleiro tab){
		int linha;
		int coluna;
		score = 0;
		

		while(true){
			
			tab.printTabuleiro();

			System.out.println();
			System.out.println("As cordenadas da peça. insira a LINHA ");   //linha

			Scanner s= new Scanner(System.in);
			linha=s.nextInt();
			
			System.out.println("Agora a COLUNA  \n");     //coluna
			coluna=s.nextInt();
			
			Peca pedida = tab.returnPeca(linha, coluna);
		
			int r=tab.getR();
			//se as coord da peça forem invalidas
			if (linha>=r||coluna>=r) {
				System.out.println("Peça não existe, escolher outra \n");
				startjogo(tab);
			}					
			
			//se n tiver adjacentes
			else if((!adjDireita(tab, pedida, tab.getR()))&&(!adjEsquerda(tab, pedida))&&(!adjBaixo(tab, pedida,tab.getR()))&&(!adjCima(tab, pedida))){
				System.out.println("Não tem adjacentes, escolher outra \n");
				startjogo(tab);
			}

			else{
				//se tiver pecas adjaccents

		
					
				listaRemover.add(pedida); //adiciona a listaRem
				
				int f=0;
				while(true){		
					if (f==listaRemover.size()) {
						break;
					}

					moviments(tab,listaRemover.get(f),r);
					f=f+1;

				}
				
				tab.removerPecas(listaRemover);
				listaRemover.clear();

			}

			int n = pecasRestam(tab);

			score = r*r-n;
			jogada=jogada+1;


			if (terminarJogo(tab,r)) {
				terminarJogo(tab,r);
				System.out.println("Score "+score);
				break;
			}
		}	
	}


	public boolean terminarJogo(Tabuleiro t, int r){
		int i = pecasRestam(t);

		if (i==0) { //se ja n houverem peças
		
			return true;
		}
		else if (!tabAdjacente(t,r)) {
			
			return true;
		}
		
		else{
			return false;
		}
	}

	public int pecasRestam(Tabuleiro t){
		int num=0;
		Peca pn= new Peca();
		for (int n=0; n<=t.getSize()-1; n++) {
			pn=t.tab.get(n);
			if(pn.getTipo()!=0){
				num=num+1;
			}
			
		}
		return num;
	}

	public boolean temAdjacents(Tabuleiro t ,Peca p, int r){ //true se tiver adj

		if ( (!adjDireita(t,p,r))&&(!adjEsquerda(t,p))&&(!adjBaixo(t,p,r))&&(!adjCima(t,p))  ) {
			return false;
		}
		else{
			return true;
		}
	}

	public boolean tabAdjacente(Tabuleiro t, int r){ // retorna true se tiver adj
		int n=0; // numero de peças com adj
		for (int b=0;b<t.tab.size()-1;b++) {
			Peca p = t.tab.get(b);
			if (p.getTipo()==0) {
				n=n+0;
			}
			else { // se a peça n é 0 tem de ver se tem adj
				if(temAdjacents(t,p,r)){
					n=n+1;
				}
				else{
					n=n+0;
				}

			}
		}
		if (n>0) {
			return true;	
		}
		else{
			return false;
		}
		
	}



	public boolean verList(Peca p){
		boolean b=false;
		for (int n=0; n<=listaRemover.size()-1; n++){
			if(listaRemover.get(n).getLinha()==p.getLinha() && listaRemover.get(n).getColuna()==p.getColuna() && listaRemover.get(n).getTipo()==p.getTipo()){
				b=true;
				break;
			}
			else{
				b=false;
			}
		}
		return b;
	}

	public boolean adjDireita(Tabuleiro taba, Peca p, int r){		

		Peca direita = taba.returnPeca(p.getLinha(), p.getColuna()+1);

		if (!verList(direita)) {
					

			if (p.getColuna()+1<r){ // se o x for menor que o tamanho lado
							
				if (p.getTipo()==direita.getTipo()) {
					//System.out.println("tem dir");	
					return true;
				}
				else
					//System.out.println("N tem dir");
					return false;
			}
			else{
				return false;
			}
		}else{
			//System.out.println("ja ta  na lista remover");
			return false;
		}
	}



	public boolean adjEsquerda(Tabuleiro taba, Peca p){

		Peca esquerda = taba.returnPeca(p.getLinha(), p.getColuna()-1);

		if (!verList(esquerda)) {
		
			if (p.getColuna()>0){ 
				

				if(p.getTipo()==esquerda.getTipo()){
					//System.out.println("tem esq");			
					return true;
				}
				else
					//System.out.println("N tem esq");	
					return false;
			}
			else{
				return false;
			}
		}else{
			//System.out.println("ja ta lista remover");
			return false;
		}
	}

	public boolean adjBaixo(Tabuleiro taba, Peca p, int r){
	
		Peca baixo = taba.returnPeca(p.getLinha()+1, p.getColuna());

		if (!verList(baixo)) {

			if (p.getLinha()+1<r){		
				
				if (p.getTipo()==baixo.getTipo()) {
					//System.out.println("tem baixo");		
					return true;
				}
				else 
					//System.out.println("N tem baixo");	
					return false;
			}
			else{
				return false;
		
			}
		}else{
			//System.out.println("ja ta lista remover");
			return false;
		}
	}

	public boolean adjCima(Tabuleiro taba, Peca p){

		Peca cima = taba.returnPeca(p.getLinha()-1, p.getColuna());
		

		if (!verList(cima)) { // se a peça ja ta na lista remover
										// n vai ver porque ja a viu
			if (p.getLinha()>0){

				


				if (p.getTipo()==cima.getTipo()) {
					//System.out.println("tem cim");			
					return true;
				}
				else
					//System.out.println("N tem cima");	
					return false;
			}
			else{
				//System.out.println("else cim");
				return false;
			}	
		}else{
			//System.out.println("ja ta lista remover");
			return false;
		}
	}



	public void moviments(Tabuleiro ta, Peca p, int r){
		int k=r;

		//criar a peça a direira e adicionala na listaremover
		if(adjDireita(ta, p, k)){
			Peca direita = new Peca(p.getLinha(), p.getColuna()+1 , p.getTipo());
				listaRemover.add(direita);

		}

		if(adjEsquerda(ta, p)){
			Peca esquerda = new Peca(p.getLinha(), p.getColuna()-1, p.getTipo());
				listaRemover.add(esquerda);			
		}

		if(adjBaixo(ta, p,k)){
			Peca baixo = new Peca(p.getLinha()+1, p.getColuna(), p.getTipo());
				listaRemover.add(baixo);				
		}

		if(adjCima(ta, p)){
			Peca cima = new Peca(p.getLinha()-1, p.getColuna(), p.getTipo());
				listaRemover.add(cima);				
		}
	}
	

	//ver este metodo

	public void imprimirList(List<Peca> a){
		for (int n=0; n<=a.size()-1; n++) {
   			System.out.println(a.get(n));
				
		}
	}

}	

