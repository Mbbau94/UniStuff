import java.util.Iterator;

public class linkedlistIterator<T> implements java.util.Iterator<T> {

    public Linkedlist<T> lista;
    public Node<T> current;

    public linkedlistIterator(Linkedlist<T> lista) {
        this.lista = lista;
        current = lista.head;
    }

    public boolean hasNext() {
        return current.getNext() != null;
    }

    public T next() {//vai percorrendo a lista pelo next
        if (hasNext()) {
            current = current.getNext();
            return current.getElemento();
        }
        return null;
    }

    public void remove() {//usa o remove da linked list
        lista.remove(current.getElemento());
    }
}
