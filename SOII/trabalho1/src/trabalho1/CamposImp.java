/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package trabalho1;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import static java.util.Arrays.fill;

/**
 *
 * @author mariasilveiro
 */
public class CamposImp extends UnicastRemoteObject implements Campos {
    
    Connection con = null;
    Statement stmt = null;
    private final static String newline = "\n";
    private final static String fill = "************************************";
    
    
        public CamposImp(String dbhost, String db, String user, String pwd) throws java.rmi.RemoteException {
        try {
            Class.forName("org.postgresql.Driver");
            // url = "jdbc:postgresql://host:port/database",
            con = DriverManager.getConnection("jdbc:postgresql://" + dbhost + ":5432/" + db, user, pwd);

            stmt = con.createStatement();

        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Erro na ligação à BD");
        }
    }

    
        public ArrayList listarCampos(String idCampo) throws java.rmi.RemoteException {

            ArrayList camp = new ArrayList();

            try {
                ResultSet rs = stmt.executeQuery("Select tipoCampo, precoCampo FROM campo" + idCampo + "';");
                while (rs.next()) {

                    String tipoCampo = rs.getString("tipoCampo");
                    String precoCampo = rs.getString("precoCampo");
          
                    camp.add("Campo: " + tipoCampo + newline + "Preço: " + precoCampo + newline + fill + newline);
                }

                rs.close();
            } catch (Exception e) {
                e.printStackTrace();
                System.err.println("Erro ao aceder à BD");
            }

            return camp;
    
    }

  
    public boolean disponibilidadeCampo(boolean l) throws RemoteException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
    public ArrayList listarReservas(String idReservas) throws RemoteException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
