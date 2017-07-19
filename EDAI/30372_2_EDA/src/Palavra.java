
public class Palavra {
	String incorreta;
	Linkedlist<String> sugestoes;
	
	public Palavra(String s){
		incorreta=s;
	}
	
	public Palavra(String s, Linkedlist<String> ls){
		incorreta =s;
		sugestoes=ls;
	}
	
	public Linkedlist<String> getSugestoes(){
		return sugestoes;
	}
	
	public String getIncorreta(){
		return incorreta;
	}
	
	public String toString(){
		return "incorreta: " +incorreta + " sugestoes: "+ sugestoes;
	}
}
