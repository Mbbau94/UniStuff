@SuppressWarnings("unchecked")
public abstract class HashTable<T> {
	
	protected HashElemento<T>[] hashtable;
	protected int size;
	protected int nItems = 0;
	
	
	public HashTable(int size)
	{
		this.size = getSize(size);
		nItems = 0;
		hashtable = new HashElemento[this.size];		
	}
	
	
	protected abstract int findIndex(T element);

	public int getNItens(){
		return nItems;
	}
	
	public HashElemento<T> getEle(int index)
	{
		return hashtable[index];
	}

	
	private int getSize(int number)
	{
		number = number*2;
		
		while (!checkPrime(number)) number++;
		
		return number;
	}
	
	private boolean checkPrime(int number)
	{
		if (number % 2 == 0)
			return false;
		
		for (int i = 3; i * i <= number; i+=2)
		{
			if (number % i == 0)
				return false;
		}
		
		return true;
	}
	
	
	public void insert(T element)
	{
		if (nItems/size > 0.5){
			reHashing();
		}
		
		int pos = findIndex(element);
		
		if (hashtable[pos] == null)
		{
			hashtable[pos] = new HashElemento<T>(element);
			nItems++;
		}

	}
	
	
	public boolean exists(T element)
	{		
		int i = findIndex(element); 
		
		HashElemento<T> current = hashtable[i];
		
		return current != null && current.equals(new HashElemento<T>(element));
	}
	
		
	
	
	public void reHashing(){
		HashTable<T> previous = this;
		int previousSize = size;
		
		size = getSize(2*size);
		
		hashtable = new HashElemento[size];
		
		for (int i = 0 ; i < previousSize; i++)
		{
			if (previous.getEle(i) != null)
				insert(previous.getEle(i).getElement());
			
		}
	}
}
