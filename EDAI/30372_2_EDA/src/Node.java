
public class Node<T> {

    public Node<T> next;
    public T elemento;

    public Node() {
        elemento = null;
        next = null;
    }

    public Node(T elemento) {
        this.elemento = elemento;
        this.next = null;
    }

    public Node(Node<T> next) {
        this.next = next;
        this.elemento = null;
    }

    public Node(Node<T> next, T elemento) {
        this.elemento = elemento;
        this.next = next;
    }

    public T getElemento() {
        if (this==null) {
            throw new InvalidNodeException("null Node");
        }
        return elemento;
    }

    public void setElemento(T elemento) {
        this.elemento = elemento;
    }

    public Node<T> getNext() {
        return next;
    }

    public void setNext(Node<T> next) {
        this.next = next;
    }
}
