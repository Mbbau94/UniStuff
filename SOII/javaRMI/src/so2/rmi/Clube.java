package so2.rmi;

import java.util.*;

public interface Clube extends java.rmi.Remote {

    public String primeiraPalavra(String s) throws java.rmi.RemoteException;

    public Vector<String> divide(String s) throws java.rmi.RemoteException;

    public ArrayList listarCampos() throws java.rmi.RemoteException;

}
