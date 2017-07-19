package so2.rmi;


import java.util.*;
import java.rmi.server.UnicastRemoteObject;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class ClubeClient {

    public static void main(String args[]) {
	String regHost = "localhost";
	String regPort = "9000";  // porto do binder
	String frase= "";

	if (args.length !=3) { // requer 3 argumentos
	    System.out.println
		("Usage: java so2.rmi.ClubeClient registryHost registryPort frase");
	    System.exit(1);
	}
	regHost= args[0];
	regPort= args[1];
	frase= args[2];


	try {
	    // objeto que fica associado ao proxy para objeto remoto
	    Clube obj =
		(Clube) java.rmi.Naming.lookup("rmi://" + regHost + ":" + 
						  regPort + "/Clube");
	    

	    // invocacao de metodos remotos

	    String first = obj.primeiraPalavra(frase) ;
	    System.out.println("1a: "+first);

	    Vector<String> v= obj.divide(frase) ;
	    System.out.println("divisao:");

	    for (int i=0; i<v.size();i++) {
		System.out.println(i+" "+ v.get(i) );
	    }
	    
	    System.out.println("\n");
    	System.out.println("listar campo");
	    
    	ArrayList list = obj.listarCampos();
	     
	  


	} 
	catch (Exception ex) {
	    ex.printStackTrace();
	}
    }
}
