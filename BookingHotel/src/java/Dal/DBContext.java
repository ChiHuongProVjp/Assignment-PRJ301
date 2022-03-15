package Dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class DBContext {
    
    Connection cn;

    public  Connection getConnectDB() throws SQLException{
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            cn = DriverManager.getConnection("jdbc:sqlserver://LAPTOP-3GH97NQP\\SQLEXPRESS:1433;databaseName=BookingHotel", "huongnc", "1234567890");
            System.out.println("OK");
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return cn;
    }

    public void close() {
        if (cn != null) {
            try {
                if (!cn.isClosed()) {
                    cn.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
        cn = null;
    }
  
}
