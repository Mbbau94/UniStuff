
public class Hash_Linear<T> extends HashTable<T> {
	
	public Hash_Linear(int size) 
	{
		super(size);
	}
	
	
	@Override
	public int findIndex(T element){    //se encontrar o elemento retorna essa pos se nao retorna uma pos vazia(null)
	
		int index = Math.abs(element.toString().hashCode() % size);		
		
		while (hashtable[index] != null && !hashtable[index].equals(new HashElemento<T>(element)) )
		{
			index++;
			index %= size;
		}
		
		return index;
	}
}
