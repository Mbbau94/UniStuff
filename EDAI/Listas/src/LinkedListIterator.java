import java.util.NoSuchElementException;



public class LinkedListIterator<E> implements java.util.Iterator {

	SingleNode<E> atual;
	
	public LinkedListIterator(SingleNode<E> a){
		atual=a;
	}
	
	public boolean hasNext(){
		return atual==null;
	}
	
	public E next(){
		if (!hasNext()){
			throw new NoSuchElementException("Nao existe proximo elemento");
		}
		E nextItem = atual.elemento;
		atual = atual.getNext();
		return nextItem;
	}
	
	public void remove(){
		throw new UnsupportedOperationException("Não pode remover");
	}
	
	
		
	
}
