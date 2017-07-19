public class Tree<T> {
    private Node<T> root;
    Indice in;

    public Tree(T rootData) {
        root = new Node<T>();
        root.data = rootData;
        root.children = new Linkedlist<Node<T>>();
        in=new Indice();
        System.out.println("");
    }

    public static class Node<T> {
    }

    public void insere() {
        System.out.println("insere");
        
        in=control.incic;

        System.out.println("insere");
        

        
    }



/*    private Node<T> remove(T x, Node<T> n) {
        if (n == null) {
            return null;
        }

        if (n.elemento.compareTo(x) < 0) {
            n.right = remove(x, n.right);
        } else if (n.elemento.compareTo(x) > 0) {
            n.left = remove(x, n.left);
        } else if (n.left != null && n.right != null) {
            T min = findMin(n.right);
            n.elemento = min;
            n.right = remove(min, n.right);
        } else if (n.left == null) {
            n = n.right;
        } else {
            n = n.left;
        }
        return n;

    }*/
}