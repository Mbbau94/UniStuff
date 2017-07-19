import java.util.Arrays;



public class ArrayStack<E>{ //implements Stack<E> {
	
	E[]stack;
	int top=-1;
	
	

	public ArrayStack(){
		stack = (E[])new Object[100];
    }
	

	public void push(E o) {
		stack[++top]= o;
	
		}
	
	public E top() {
		return stack[top];
	}
	
	public E pop(){
		E x= stack[top];
		stack[top]=null;
		top--;
		return x; 
	}
	
	public int size() {
		return top;
	}
	
	public boolean empty() {
		if(top==-1){
			return true;
		}else{
			return false;}
	}
	
	public String ToString(){
		return Arrays.toString(stack);
	}
}
