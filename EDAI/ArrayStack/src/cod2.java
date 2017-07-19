
public class cod2 {

		
		public static void bin(int n){
			 ArrayStack<Integer> s = new ArrayStack<Integer>();
			while(n!=0){
				int resto= n % 2;
				s.push(resto);
				n = n / 2;
			}
			while(!s.empty()){
				System.out.print(s.pop());
			}
			System.out.println();
			//for(int i = stack.length; i>0; i++){
				//System.out.println(stack[i]);
		}
		
		
		
		public static void main(String[] args){
		
			bin(10);
			}
}
	

