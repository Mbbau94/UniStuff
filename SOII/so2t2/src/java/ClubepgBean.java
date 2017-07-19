
import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.event.AbortProcessingException;
import javax.faces.event.AjaxBehaviorEvent;

@ManagedBean
@SessionScoped
public class ClubepgBean extends Connect implements Serializable {

    //var do lista campo
    String idcampo = "";
    String tipocampo = "";
    String idReserva = "";
    String preco = "";
    
    
    String ocupado="";
    String dateEO = "";
    String horaEO="";
    
    
    //vars da reserva
    private String name = "";
    private String totalValue = "120.00";
    private String numeroTele="";
    private String date = "";
    private String horaI="";
    private String horaF="";
    private String numeroUsers="";
    
    
    private String tickets = "1";
    private String price = "120";
    
   
    private boolean reservaCriada;
    boolean espOcupado;

    public ClubepgBean() {

    }
    
    
    public boolean getEspOcupado(){
        return espOcupado;
    }
    public void setEspOcupado(boolean b){
        this.espOcupado=b;
    }
    public boolean getReservaCriada(){
        return reservaCriada;
    }
    
    public void setNumeroUsers(boolean s){
        this.reservaCriada=s;
    }
    
    public String getNumeroUsers(){
        return numeroUsers;
    }
    
    public void setNumeroUsers(String s){
        this.numeroUsers=s;
    }
    
    
    public String getNumeroTele(){
        return numeroTele;
    }
    public void setNumeroTele(String n){
        this.numeroTele=n;
    }
    
    public String getHoraI(){
        return horaI;
    }
    public void setHoraI(String n){
        this.horaI= ""+date+" "+n;
    }
    public String getHoraF(){
        return horaF;
    }
    public void setHoraF(String n){
        this.horaF= ""+date+" "+n;;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTotalValue() {
        return totalValue;
    }

    public void setTotalValue(String totalValue) {
        this.totalValue = totalValue;
    }

    /*public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmailAgain() {
        return emailAgain;
    }*/

   /* public void setEmailAgain(String emailAgain) {
        this.emailAgain = emailAgain;
    }*/

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTickets() {
        return tickets;
    }

    public void setTickets(String tickets) {
        this.tickets = tickets;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    //*************ocaupado
    
    public String getDateEO() {
        return dateEO;
    }

    public void setDateEO(String date) {
        this.dateEO = date;
    }
    
    public String getHoraEO() {
        return horaEO;
    }

    public void setHoraEO(String h) {
        this.horaEO = h;
    }
    
    public void setOcupado(String b){
        this.ocupado= b;
    }
    
    public String getOcupado(){
        return ocupado;
    }
    
    /*
     public void settipoCampo(String ic) {
        this.tipoCampo = ic;
    }
    
    public String gettipoCampo(){
        return tipoCampo;
    }*/

       //**********lista campo
    public void setidcampo(String ic) {
        this.idcampo = ic;
    }
    
    public String getidcampo(){
        return idcampo;
    }

    public void settipocampo(String tc) {
        this.tipocampo = tc;
    }
    
    public String gettipocampo(){
        return tipocampo;
    }
    
    public void setpreco(String p){
        this.preco=p;
    }
    
    public String getpreco(){
        return preco;
    }
    
    
    
    public void calculateTotal(AjaxBehaviorEvent event) 
            throws AbortProcessingException {
        
        int ticketsNum = 1;
        int ticketPrice = 0;
        int total = 0;

        if (tickets.trim().length() > 0) {
            ticketsNum = Integer.parseInt(tickets);
        }
        if (price.trim().length() > 0) {
            ticketPrice = Integer.parseInt(price);
        }
        total = (ticketsNum * ticketPrice);
        totalValue = String.valueOf(total) + ".00";
    }

    public void clear(AjaxBehaviorEvent event) 
            throws AbortProcessingException {
        name = "";
        date = "";
        price = "120.00";
        totalValue = "120.00";
        tickets = "1";
    }
    
    
    
    public ArrayList listaReservas(){
        ArrayList ls = new ArrayList();
        System.out.println("lista reservas");
        try{
            ResultSet rs = connect().executeQuery("SELECT tipocampo, inicio, fim FROM campo, reserva where reserva.id_campo=campo.idcampo and tipocampo= '"+tipocampo+"';");
            
            while(rs.next()){
                ClubepgBean a = new ClubepgBean();
              
                a.settipocampo(rs.getString("tipocampo"));
                a.setHoraI(rs.getString("fim"));
                a.setHoraF(rs.getString("inicio"));
                ls.add(a);
                    
            }
            rs.close();
        
        }
        
        catch(Exception e){
            e.printStackTrace();
            System.err.println("Erro ao aceder à BD");
        }
        return ls;
        
    }
  
    public boolean fazerReserva(){
        //int idReser = 17000; 
        
        
        boolean b=false;
        try{
            b=true;
            int  rs = connect().executeUpdate("INSERT INTO reserva (id_Campo,nomeCliente,telefoneCliente,custoReserva,numUtilizadores,inicio,fim) VALUES ('"+idcampo+"', '"+name+"', '"+numeroTele+"', "+totalValue+", "+ numeroUsers+", '"+horaI+"', '"+horaF+"');");
            System.out.println("reserva criada\n");
        
            
        }
        
        catch(Exception e){
            e.printStackTrace();
            System.err.println("Erro ao aceder à BD");
        } 
        return b;
    }



  


    public ArrayList listaCampos() {

        ArrayList campos = new ArrayList();

        try {
            ResultSet rs = connect().executeQuery("Select idcampo, tipocampo, precocampo FROM campo;");
            while (rs.next()) {
                ClubepgBean a = new ClubepgBean();
                a.setidcampo(rs.getString("idcampo"));
                a.settipocampo(rs.getString("tipocampo"));
                a.setpreco(rs.getString("precocampo"));

                campos.add(a);

            }

            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Erro ao aceder à BD");
        }

        return campos;

    }
    
    public void espacoOcupado(){
        
        
      System.out.println("\n -----espaço ocupado ??\n");
      
        try{
            
            ResultSet rs = connect().executeQuery("select tipocampo, id_campo ,inicio, fim from reserva, campo where reserva.id_campo=campo.idcampo and id_campo='"+idcampo+"';");
            
            //java.sql.Timestamp timestamp = java.sql.Timestamp.valueOf("2017-"+mes+"-"+dia+" "+hora+":00");
            java.sql.Timestamp timestamp = java.sql.Timestamp.valueOf(""+dateEO+" "+horaEO+":00");
            
            //timestamp a verificar se ta ocupado
            
            //System.out.println(timestamp+"  timestamp");
            //System.out.println(idcampo+" hehehe campo");
            
            //System.out.println(rs.next() + " hrs next \n");
            
            int co = 0;

            
            while(rs.next()){
                
                System.out.println("inicio while");
               
               
                ClubepgBean a = new ClubepgBean();
                a.setidcampo(rs.getString("id_campo"));
                
                        
                //timestamps das horas das reservas para um campo
                java.sql.Timestamp timestampIn = rs.getTimestamp("inicio");
                java.sql.Timestamp timestampFi = rs.getTimestamp("fim");
                
                    
                if (timestamp.after(timestampIn) && timestamp.before(timestampFi)) {
                    ocupado= "ocupado";
                    System.out.println("Ocupadooooo after before");
                    a.setOcupado(ocupado);
                    break;


                }
                else{
                    System.out.println("n ocupado");

                    ocupado="nao ocupado";
                    a.setOcupado(ocupado);
                }
                
        
            }
            rs.close();

        }
        catch(Exception e){
            e.printStackTrace();
            System.err.println("Erro ao aceder à BD");
        }
        

        
    }


    /*public ArrayList pesquisaVoos() {

        ArrayList voos = new ArrayList();

        try {
            ResultSet rs = connect().executeQuery("Select * FROM voo WHERE destino LIKE '" + idcampo + "';");

            while (rs.next()) {
                AvioesBean a = new AvioesBean();
                //a.setIdVoo(rs.getString("idvoo"));
                a.setData(rs.getString("data") + " / " + rs.getString("hora"));
                a.setPartida(rs.getString("partida"));
                a.setLugares(rs.getInt("nlugares"));

                voos.add(a);

            }

            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Erro ao aceder à BD");
        }

        return voos;
    }*/

   /* public int getIdVendaDB() {

        int idvenda = 0;
        try {
            ResultSet rs = connect().executeQuery("SELECT idvenda FROM venda ORDER BY idvenda DESC LIMIT 1;");
            while (rs.next()) {

                idvenda = Integer.parseInt(rs.getString("idvenda"));
            }
            rs.close();

        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Erro ao aceder à BD");
        }
        return idvenda;

    }*/

    /*public int lugaresDisponiveis(String idVoo) {
        int lDisp = 0;

        try {
            ResultSet rs = connect().executeQuery("Select nlugares FROM voo WHERE idvoo LIKE '" + idVoo + "';");
            while (rs.next()) {
                lDisp = Integer.parseInt(rs.getString("nlugares"));
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Erro ao aceder à BD");
        }
        return lDisp;
    }*/

    /*public int compraVoo() {

        int novaVenda = getIdVendaDB() + 1;
        int lugaresIniciais = lugaresDisponiveis(idReserva);
        int lugaresFinais = lugaresIniciais - 1;

        if (existeCliente(nome, idReserva)) {
            // Se já existe o cliente saltar o INSERT na tabela cliente e passar logo para as outras tabelas
            //System.out.println("Cliente existente");
        } else {
            try {
                int insert = connect().executeUpdate("INSERT INTO cliente VALUES ('" + nome + "','" + preco + "');");
                //System.out.println("Cliente novo");
            } catch (Exception e) {

            }
        }
        try {

            int insert1 = connect().executeUpdate("INSERT INTO venda VALUES (" + novaVenda + ",'" + cc + "','" + idVoo + "'," + 1 + ");");
            int insert2 = connect().executeUpdate("INSERT INTO passageiro VALUES (" + novaVenda + ",'" + cc + "','" + idVoo + "');");
            int updateLugares = connect().executeUpdate("UPDATE voo SET nlugares =" + lugaresFinais + " WHERE idvoo LIKE '" + idVoo + "';");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Erro ao inserir dados na BD");
        }

        return novaVenda;

    }*/

   /* public boolean existeCliente(String nome, String cc) {
        boolean b = false;
        try {

            ResultSet existe = connect().executeQuery("SELECT COUNT(nome) FROM cliente WHERE nome='" + nome + "'and cc='" + cc + "';");
            existe.next();
            b = existe.getInt(1) > 0;
            existe.close();

        } catch (SQLException e) {

            e.printStackTrace();
        }
        return b;
    }*/

}
