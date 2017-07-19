public class DoubleLinkedList<T> implements Iterable<T> {
	
	private DoubleNode<T> header;
	private DoubleNode<T> footer;
	private int tamanho;
	
	public DoubleLinkedList(){
		header= new DoubleNode<T>();
		footer= new DoubleNode<T>();
		tamanho=0;
		header.next=footer;
		footer.prev=header;
		
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
	
	public void add(T x){
		DoubleNode<T> n= new DoubleNode<T>(x);
		n.next=footer;
		n.prev=footer.prev;
		footer.prev.next=n;
		footer.prev=n;
	}
	
	/*public void remove(int i){
		
	}
	
	public void remove(T x){
	*/	
	
	public static void main(String[] args){
		DoubleLinkedList<Integer> l= new DoubleLinkedList<Integer>();
		
		System.out.println(l.size());
		System.out.println(l);
	}
	
}
