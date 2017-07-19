//import java.util.Iterator;

public class Linkedlist<T>{

    public Node<T> head;
    private int size;

    public Linkedlist() {
        size = 0;
        head = new Node<T>();
        //  tail = head;
    }

    public linkedlistIterator<T> iterator() {
         linkedlistIterator iter = new linkedlistIterator<T>(this);
         return iter;
    }



    public int size() {
        return size;
    }

    public boolean isEmpty() {
        return size == 0;
    }

    public void add(T x) {      //funciona
        if (isEmpty()) {//lista vazia
            head.setNext(new Node<T>(null, x));
            //tail = head.next;
            size++;
        } else {//lista com mais de 1 elemento
            linkedlistIterator<T> iter = iterator();
            while (iter.hasNext()) {
                iter.next();
            }
            iter.current.setNext(new Node<T>(x));
            size++;
        }
    }

    public void add(int index, T x) {       //funciona se metes index2 
                                        // adiciona na 3 posiçao
        linkedlistIterator iter = iterator();
        int ct = 0;
        while (iter.hasNext()) {
            if (ct == index) {
                Node<T> node=new Node<T>(iter.current.getNext(), x);
                iter.current.setNext(node);
                break;
            }
            iter.next();
            ct++;
        }
    }
    public void push(T new_data)
    {
        /* 1 & 2: Allocate the Node &
                  Put in the data*/
        Node<T> new_node = new Node(new_data);
 
        /* 3. Make next of new Node as head */
        new_node.next = head;
 
        /* 4. Move the head to point to new Node */
        head = new_node;
    }
    

    

    public void remove(T x) {     //funciona
        linkedlistIterator iter = iterator();
        while (iter.hasNext()) {
            if (iter.current.getNext().getElemento() == x) {
                if (iter.current.getNext().getNext() == null) {//verifica o fim da lista
                    iter.current.setNext(null);
                } else {
                    iter.current.setNext(iter.current.getNext().getNext());
                }
                size--;
                break;
            }
            iter.next();
        }
    }

    public void remove(int index) {
        /*A cabeça da lista toma a posiçao -1
        ou seja, nunca é removida.
        O primeiro nó com elemento != null
        toma a posiçao 0*/

        linkedlistIterator iter = iterator();
        int ct = 0;
        if (ct <= size) {//se estiver na lista
            while (iter.hasNext()) {
                if (ct == (index-1)) {
                    if (iter.current.getNext().getNext() == null) {//verifica o fim da lista
                        iter.current.setNext(null);
                    } else {
                        iter.current.setNext(iter.current.getNext().getNext());
                    }
                    size--;
                    break;
                }
                iter.next();
                ct++;
            }
        }
    }


    public String toString() {
        String s = "";
        linkedlistIterator iter = iterator();
        while (iter.hasNext()) {
            s += "| " + iter.current.getElemento() + " ";
            iter.next();
            if (iter.hasNext()==false) {
                s += "| " + iter.current.getElemento() + " ";
                return s;
            }
        }
        return s;
    }


    public Node<T> getT(int index){
    
        linkedlistIterator iter = iterator();
        
        int ct = 0;
        
        if (index <= size) {//se estiver na lista
            while (iter.hasNext()) {
                if (ct == (index-1)) {
                    return iter.current.getNext(); 
                }
                iter.next();
                ct++;
            }
        }
            System.out.println("index fora da lista");
            return null;
        
    }

    public boolean pertence(T el){
        linkedlistIterator iter = iterator();
        boolean x=true;
        while(iter.hasNext()){
            System.out.println("pertence");

            if(iter.current.getElemento().equals(el)){
                x= true;
            System.out.println("pertenceeee");

                break;
            }
            else{
                x= false;
                break;
            }

        }
        return x;
    }
    
}