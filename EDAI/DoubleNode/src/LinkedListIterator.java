import java.util.NoSuchElementException;



public class LinkedListIterator<E> implements java.util.Iterator<E> {

	DoubleNode<E> atual;
	
	public LinkedListIterator(DoubleNode<E> a){
		atual=a;
	}
	
	public boolean hasNext(){
		return atual.elemento!=null;
	}
	
	public E next(){
		if (!hasNext()){
			throw new NoSuchElementException("Nao existe proximo elemento");
		}
		E nextItem = atual.elemento;
		atual = atual.next;
		return nextItem;
	}
	
	//public E prev(){
		
	//}
	
	
	
	public void remove(){
		throw new UnsupportedOperationException("Não pode remover");
	}
	
	
		
	
}
