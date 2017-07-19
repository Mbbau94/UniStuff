public class Simbolo{
	// classe que contem um par simbolo/probabilidade
	
	private String simbolo;
	private double probabilidade;

	public Simbolo(String simb, double prob){
		simbolo = simb;
		probabilidade = prob;
	}

	public String simbolo(){
		return simbolo;
	}

	public double probabilidade(){
		return probabilidade;
	}
	
	public String toString(){
		return simbolo + " | " + probabilidade +  "\n";
	} 
}
