Lipublic class LinkedList<T> implements Iterable<T> {
	
	private SingleNode<T> header;
	private SingleNode<T> last;
	private int tamanho;
	
	public LinkedList(){
		header= new SingleNode<T>();
		tamanho=0;
		last= header;
	}
	
	public java.util.Iterator<T> iterator(){
		return new LinkedListIterator<T>(header.next);
	}
	
	public int size(){
		return tamanho;
	}
	
	public boolean isEmpty(){
		return tamanho==0;
	}
	
	public String toString(){
		String s="(";
		for (T x: this){
			s+= x+" ";
		
		}
		return s+")";
	}
	
	public void remove(int i){
		
	}
	
	public void remove(T x){
		
	}
	public static void main(String[] args){
		LinkedList<Integer> l= new LinkedList<Integer>();
		
		System.out.println(l.size());
		System.out.println(l);
	}
	
}
