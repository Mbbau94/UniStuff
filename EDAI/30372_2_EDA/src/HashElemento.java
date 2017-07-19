
public class HashElemento<T> {

		private T element;

		
		public HashElemento(T element)
		{
			this.element = element; 
		}
		
		public T getElement()
		{
			return element;
		}
		

		public void setElement(T element)
		{
			this.element = element;
		}
		
		
		public boolean equals(Object el)
		{
			if (this == el)
				return true;
			
			if (el == null || el.getClass() != this.getClass())
					return false;
			
			
			@SuppressWarnings("unchecked")
			HashElemento<T> x = (HashElemento<T>) el;
			return x.element.equals(this.element);
		}
		
		public String toString()
		{
			return element.toString();
		}
		
		

	}
