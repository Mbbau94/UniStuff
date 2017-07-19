/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package trabalho1;

import java.util.Vector;
/**
 *
 * @author mariasilveiro
 */
public class CamposCliente {
    
   
    public static void main(String args[]) {
	String regHost = "alunos.di.uevora.pt";
	String regPort = "9000";  // porto do binder
	

	if (args.length !=2) { 
	    System.out.println
		("Usage: java so2.rmi.Cliente registryHost registryPort");
	    System.exit(1);
	}
	regHost= args[0];
	regPort= args[1];
	


	try {
	    // objeto que fica associado ao proxy para objeto remoto
	    Campos obj =
		(Campos) java.rmi.Naming.lookup("rmi://" + regHost + ":" + 
						  regPort + "/Campos");
	   

	} 
	catch (Exception ex) {
	    ex.printStackTrace();
	}
    }
    
}
