import java.util.*;
import javax.swing.*;

class Tabuleiro{
	JFrame janela;
	List<JLabel> mat;
	List<Peca> tab;
	
	int r;
	int c;

	public Tabuleiro(){
	}

	public Tabuleiro(int n, int cc){
		r=n;
		tab= new ArrayList<Peca>();
		mat= new ArrayList<Jlabel>();
		metePecas(cc);
	}

	public int getSize(){
		return tab.size();
	}






	
	public void metePecas(int c){
		Random rand = new Random();

		janela=new JFrame("Space Colors");
		janela.setBounds(0,0,518,518);
		janela.setLayout(null);
		janela.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	
		

		for(int linha=0 ; linha < r ; linha++){
                	for(int coluna = 0; coluna < r ; coluna ++){
                		Jlabel jl = new Jlabel();
                		int n =rand.nextInt((c-1)+1)+1;
						tab.add(new Peca(linha,coluna,n));
						jl.setBounds(0+linha*50, 0+coluna*50,50,50);
						jl.setIcon(new ImageIcon(""+n+".jpg"));
						jl.setVisible(true);

						mat.add(jl);
						janela.add(jl);

                	}
        	}
		//Tabuleiro t=meteTab(tab);
        janela.setVisible(true);
		//return tab;
	}
	
	



	public boolean pecaExiste(Peca p){
		boolean b=false;
		for (int n=0; n<=tab.size()-1; n++){
			if(tab.get(n).getLinha()==p.getLinha() && tab.get(n).getColuna()==p.getColuna() && tab.get(n).getTipo()==p.getTipo()){
				b=true;
				break;
			}
			else{
				b=false;
			}
		}
		return b;
	}
	// 0 se houver peca abaix
	// 1 se nao houver apenas 1 peça abaixo
	// 2 se n houver apenas 2 peças abaixo
	// n se nao houver n peçaas abaixo
	

	public void removerPecas(List<Peca> lp){ //recebe a listaRemover e remove essas do tab

		for (int n=0; n<=lp.size()-1; n++){
			Peca pecaRemo = lp.get(n);
			if (pecaExiste(pecaRemo)) {
				for (int x=0; x<=tab.size()-1; x++) {
					if (pecaRemo.getLinha()==tab.get(x).getLinha() && pecaRemo.getColuna()==tab.get(x).getColuna()) {
						tab.get(x).setPtipo(0);
					}
				}
			}
		}
		//printTabuleiro();

		cairPecas();

		//empurrarPecas();
	}	

	public boolean verCol(Peca p){
		int index=tab.indexOf(p);

		boolean b=true;
		for (int i=0; i<r-1; i++){				
			Peca pp = tab.get(index+i*r);
			//System.out.println(pp);
			if (tab.get(index+i*r).getTipo()==0){
				b= true;		
				//System.out.println(y + z + "Esta peca e 0");			
			}
		
			else{ 
				b= false;		
				//System.out.println(y + z + "esta peca n e 0");
			}
		}
		System.out.println("coluna" + b);		
		return b;
	}

		
	
	public void empurrarPecas(){
		//List<Pecas> lista;
		System.out.println("antes do for");		
		for (int n=1; n<r; n++){ // ver a primeira linha
			
			Peca p = tab.get(n);

			System.out.println(tab.get(n).getTipo());
			boolean x=verCol(p);			
			if (x==true){

					moveCol(p);	
					System.out.println(p + " vai mover coluna ");

				
				
			}
			
		}	
	}
	
	public void moveCol(Peca p){
		int col=p.getColuna();	
		int index=tab.indexOf(p);
		for (int n=0; n<col;n++){ 				
			Peca pp=returnPeca(p.getLinha(), p.getColuna()-n);
			System.out.println(pp); //peça linha0 
			for (int i=0; i<r-1; i++){
				//avança nas linhas
				Peca asd=returnPeca(pp.getLinha()+i, pp.getColuna());			
				//System.out.println("peca da posição -1     " + asd);
				tab.set(index+r*i-1,asd);
				tab.set(index+r*i-2, new Peca(p.getLinha()+i,p.getColuna(),0));
			}
			//getColuna()=p.getColuna()-1;	
		}
	}


	public void cairPecas(){//ve a peça x, ve se habaixo, se n, todas as peças acima caem 1 posiçao
		
		for (int n=0; n<=tab.size()-1; n++){
			int nPecas = nHaPecaBaixo(tab.get(n),0);
			if (nPecas>0) { // se n ha pelo menos 1 peca abaixo
				 //num de peças vazias abaixo
				int idx = tab.indexOf(tab.get(n));
				
				//criar nova peça com a mesma col mas com a linha + npecas
				
				Peca pe = new Peca(tab.get(n).getLinha(), tab.get(n).getColuna(), tab.get(n).getTipo());
				Peca nova = new Peca();
				for (int i=0; i<r-1; i++) {//mandar todas as peças a parter da pecaN
					//ate ser a peça da primeira linha
					
					//peca que quero mover p'baixo
					nova=returnPeca(tab.get(idx-r*i).getLinha(), tab.get(idx-r*i).getColuna());

					if (nova.getTipo()==0) {
						break;
					}
					else if (nova.getLinha()==0) {
						moverNxbaixo(nova, nPecas);	
						break;
					}
					else{
						moverNxbaixo(nova, nPecas);
					}
	

				}
			
			}
		
		}	
	}

	public int moverNxbaixo(Peca p, int t){
		int index = tab.indexOf(p);
		Peca pp = new Peca(p.getLinha()+t,p.getColuna(),p.getTipo());
			tab.set(index+r*t,pp);
			tab.set(index, new Peca(p.getLinha(),p.getColuna(),0));

			return index+r*t;

	}

	public Peca pecaAcima(Peca p){
		if (p.getLinha()==0) {
			return null;
		}
		Peca acima = returnPeca(p.getLinha()-1, p.getColuna());
		return acima;
	}
	public int nHaPecaBaixo(Peca p, int v){ 
		int n=v;

		if (p.getTipo()==0&&p.getLinha()==0 || p.getLinha()==r-1) { //se na 1ª linha tiver 0, n faz mal
			return n;				//se for 1 peca da ultima linha, n ve
		}

		else{
			Peca abaixo = returnPeca(p.getLinha()+1, p.getColuna());
			if (abaixo.getTipo()==0) {
				n=n+1;
				return nHaPecaBaixo(abaixo,n);
			}
			return n;
		}
	}
	
	public Peca returnPeca(int x, int y){
		Peca peca = new Peca();
		for (int n=0; n<=tab.size()-1; n++) {
			if(tab.get(n).getLinha()==x && tab.get(n).getColuna()==y){
				peca = tab.get(n);
			}
		}

		return peca;
	}
	
	public int getR(){
		return r;	
	}
	
	public void printTabuleiro(){
		System.out.println("******************");
		System.out.println("******************");
		System.out.println("*\n");
		System.out.println("  SMOOTHY    ");
		for (int n=0; n<=tab.size()-1; n++) {
			if(n%r==0){
				System.out.println();
			}
			
   			System.out.print(tab.get(n).getTipo()+" ");
		}
		System.out.println("\n");

		System.out.println("* ");

		System.out.println("******************");
		System.out.println("******************");



	}

	
}
	


	
	
