public interface Queue<E>{
	public void enqueue(E o) throws OverflowQueueExpeption;
		public E front() throws EmptyQueueExpetion;
		public E dequeue() throws EmptyQueueException;
		public int size();
		public boolean empty();
}