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

import java.util.Vector;
import java.util.ArrayList;

public interface Campos extends java.rmi.Remote {

    public ArrayList listarCampos(String idCampo) throws java.rmi.RemoteException;

    public boolean disponibilidadeCampo(boolean l) throws java.rmi.RemoteException;
    
   // public reservar divide(String s) throws java.rmi.RemoteException;
    
    public ArrayList listarReservas(String idReservas) throws java.rmi.RemoteException;


}
