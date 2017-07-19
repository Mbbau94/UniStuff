public class DoubleNode<T> {
	
	T elemento;
	DoubleNode<T> next;
	DoubleNode<T> prev;
	
	public DoubleNode(T e){
		elemento=e;
		next=null;
		prev=null;
	}
	
	public DoubleNode(){
		this(null);
	}
	
	public DoubleNode(T e, DoubleNode<T> n, DoubleNode<T> p){
		elemento=e;
		next=n;
		prev=p;
	}	
	
}

