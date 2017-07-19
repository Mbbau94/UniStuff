
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class Connect {

    public Statement connect() throws SQLException {

       /* Properties properties = new Properties();

        try {
            properties.load(new FileInputStream("servidor.properties"));
        } catch (IOException e) {
            System.out.println("Erro ao ler ficheiro .properties"); 
        }*/
        
        String dbhost = "localhost"; //properties.getProperty("dbhost");
        String db = "clubepg"; //properties.getProperty("db");
        String user = "mbabau"; //properties.getProperty("user");
        String pwd = "12345"; //properties.getProperty("pwd"); 
        Connection con = null;
        Statement stmt = null;
        try {
            Class.forName("org.postgresql.Driver");
            // url = "jdbc:postgresql://host:port/database",
            con = DriverManager.getConnection("jdbc:postgresql://" + dbhost + ":5432/" + db, user, pwd);

            stmt = con.createStatement();

        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Erro na ligação à BD");
        }        
        return stmt;
    }
}
