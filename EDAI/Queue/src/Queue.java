import java.util.Arrays;


public class Queue<E> {//implements Queueinterface<E>\\ {
	
	E[]queu;
	int fim=0;
	int ini=0;
	public Queue(){
		queu = (E[])new Object[100];
		
	}
	
	public Queue(int n){
		queu = (E[])new Object[n];
	}
	
	public void enqueue(E o){ //throws OverflowQueueExpeption{
	if (size()== queu.length-1){
		System.out.println("Esta cheio");
	}else{
		queu[fim]=o;
		fim= inq(fim);
	}
	}
	
	public E front(){
		return queu[0];
	}
	public int size(){
		return (queu.length-ini+fim) %queu.length ;
	}
	public boolean empty(){
		return ini==fim;
	}
	public String toString(){
		return Arrays.toString(queu);
	}
	
	private int inq(int x){
		return(x+1) %queu.length;
	}
	
	public E dequeue(){
		E p= (E) queu[ini];
		if (empty()){
			System.out.println("Esta vazio");
		}else{
			p=queu[ini];
			queu[ini]= null;
			inq(ini);
		}
		return(p);
	}
	
	public static void main(String[] args){
		Queue<Integer>a = new Queue<Integer>(5);
		a.enqueue(3);
		a.enqueue(2);
		a.dequeue();
		System.out.println(a);
		
	}
}
