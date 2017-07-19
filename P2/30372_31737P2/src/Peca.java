class Peca{
	int linha;
	int coluna;
	int tipoPeca;

	
	public Peca(){
	}
	
	public Peca(int x, int y){ // primeiro a linha e depois coluna
		linha=x;
		coluna=y;
	}
	
	public Peca(int x, int y, int t){
		linha=x;
		coluna=y;
		tipoPeca=t;
		
	}
	
	public int getLinha(){
		return linha;
	}
	
	public void setLinha(int x){
		linha=x;
	}

	public int getColuna(){
		return coluna;
	}
	
	public void setColuna(int x){
		coluna=x;
	}
	
	public int getTipo(){
		return tipoPeca;
	}
	
	public void setPtipo(int x){
		tipoPeca=x;
	}
	
	public String toString(){
		return "linha: "+linha+" coluna: "+coluna+" tipo "+tipoPeca;
	}

}