package so2.rmi;

/**
 * CLASSE DO OBJECTO REMOTO Tem a parte funcional... a implementação das
 * operações do serviço.
 */
import java.rmi.server.UnicastRemoteObject;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class ClubeImpl extends UnicastRemoteObject implements Clube, java.io.Serializable {

    // deve existir um construtor
    Connection con = null;
    Statement stmt = null;

    public ClubeImpl(String dbhost, String db, String user, String pwd) throws java.rmi.RemoteException {
        try{
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/bd1","mbabau","12345bd");
            stmt =  con.createStatement();
        }
        catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
            System.err.println("Erro na ligação à BD");
        }
    }

    // ... e a implementacao de
    // cada metodo declarado na interface remota
    
    
    /**
     * devolve a primeira palavra da frase recebida
     *
     * @param s
     * @return
     * @throws java.rmi.RemoteException
     */
    public String primeiraPalavra(String s) throws java.rmi.RemoteException {
        System.err.println("invocacao primeiraPalavra() com: " + s);
        String s2 = s.trim();  // remove espacos no inicio ou fim
        int k = s2.indexOf(" ");  // indice de " "
        if (k < 0) // nao tem espacos
        {
            return s2;
        } else {
            return s2.substring(0, k);  // apenas a 1a palavra
        }
    }

    /**
     * devolve um vector com cada palavra da expressao recebida
     *
     * @param s
     * @return
     * @throws java.rmi.RemoteException
     */
    public java.util.Vector<String> divide(String s) throws java.rmi.RemoteException {
        System.err.println("invocacao divide() com: " + s);
        java.util.Vector<String> v = new java.util.Vector<String>();
        String s2 = s.trim();

        String[] s2pals = s2.split(" ");

        for (int i = 0; i < s2pals.length; i++) {
            v.add(s2pals[i]);       // adiciona a palavra i
        }
        return v;
    }

    public ArrayList listarCampos() throws java.rmi.RemoteException{
        ArrayList campos = new ArrayList();

        try{
            ResultSet rs = stmt.executeQuery("Select idcampo, precocampo FROM campo ;");
            while (rs.next()) {
                String idcampo = rs.getString("idcampo");
                String preco = rs.getString("precocampo");

                campos.add("idCampo: "+ idcampo + "***Preço: "+ preco+"\n");
                System.out.println("idCampo: "+ idcampo + "***Preço: "+ preco+"\n");                
            }
            rs.close();
        }catch(Exception e){
            e.printStackTrace();
            System.err.println("Erro ao aceder á BD");
        }

        return campos;

    }

}
