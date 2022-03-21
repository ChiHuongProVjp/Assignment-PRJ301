package Dal;

import Model.Image;
import Model.Room;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class AdminDBContext {
    //declare variables
    private Connection con;
    DBContext cn = new DBContext();
    private PreparedStatement pst;
    private Statement st;
    private Statement st2;
    private ResultSet rs;
    private ResultSet rs2;
    private String query;
    private ArrayList<Room> listRoom;
    private ArrayList<Image> images;
    private String a = "";
    public AdminDBContext() throws SQLException {
        con = null;
        pst = null;
        st = null;
        rs = null;
        st2 = null;
        rs2 = null;
        listRoom = new ArrayList<>();
        con = cn.getConnectDB();
        st = con.createStatement();
        st2 = con.createStatement();
    }
    public boolean Login(String name, String pass) {
        boolean status = false;
        try {
            con = cn.getConnectDB();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT [username] FROM [dbo].[admin] WHERE [admin].[username] = '"+name+"' and [admin].[password] = '"+pass+"'");
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
              status = true;   
            }
            System.out.println("SELECT [username] FROM [dbo].[admin] WHERE [admin].[username] = '"+name+"' and [admin].[password] = '"+pass+"'");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return status;
    }
}
