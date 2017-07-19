import java.util.*;
public class TreeNode<T>{

    T data;
    TreeNode<T> parent;
    LiskedList<TreeNode<T>> children;

    public TreeNode(T x) {
        data = x;
        this.children = new LinkedList<TreeNode<T>>();
    }

    public TreeNode<T> addChild(T child) {
        TreeNode<T> childNode = new TreeNode<T>(child);
        childNode.parent = this;
        this.children.add(childNode);
        return childNode;
    }

    
}