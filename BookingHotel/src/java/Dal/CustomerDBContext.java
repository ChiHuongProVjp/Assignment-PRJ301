package Dal;

import Model.Customer;
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
public class CustomerDBContext {

    //declare variables
    private Connection con;
    DBContext cn = new DBContext();
    private PreparedStatement pst;
    private Statement st;
    private Statement st2;
    private ResultSet rs;
    private ResultSet rs2;
    private String query;
    private ArrayList<Customer> listCustomer;

    public CustomerDBContext() throws SQLException {
        con = null;
        pst = null;
        st = null;
        rs = null;
        st2 = null;
        rs2 = null;
        listCustomer = new ArrayList<>();
        con = cn.getConnectDB();
        st = con.createStatement();
        st2 = con.createStatement();
    }

    public ArrayList<Customer> loadProduct() {
        listCustomer = new ArrayList<>();//declare variables
        query = "SELECT * FROM customer";//query sql select data
        try {
            rs = st.executeQuery(query);//execute query

            while (rs.next()) {
                int cusID = rs.getInt("customerId");//get id product 
                String name = rs.getString("fullName");
                String email = rs.getString("email");//get name product 
                String address = rs.getString("address");
                int gender = rs.getInt("gender");
                String phone = rs.getString("phone");
                int status = rs.getInt("status");//get status

                listCustomer.add(new Customer(cusID, name, address, email, gender, phone, status));

            }

        } catch (SQLException ex) {
            System.out.println("Can't load data of list room");//display warning message
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return listCustomer;
    }

    public String getName(int customerId) {
        listCustomer = new ArrayList<>();//declare variables
        query = "SELECT TOP (1000) [customerId]\n"
                + "      ,[fullName]\n"
                + "      ,[address]\n"
                + "      ,[email]\n"
                + "      ,[gender]\n"
                + "      ,[phone]\n"
                + "      ,[status]\n"
                + "  FROM [BookingHotel].[dbo].[customer]\n"
                + "  where customerId = '" + customerId + "'";
        try {
            rs = st.executeQuery(query);//execute query

            while (rs.next()) {
                String name = rs.getString("fullName");
                return name;

            }

        } catch (SQLException ex) {
            System.out.println("Can't load data of list room");//display warning message
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return "Unknow";
    }

    public Customer getCustomer(int customerId) {
        Customer cus = null;
        query = "SELECT TOP (1000) [customerId]\n"
                + "      ,[fullName]\n"
                + "      ,[address]\n"
                + "      ,[email]\n"
                + "      ,[gender]\n"
                + "      ,[phone]\n"
                + "      ,[status]\n"
                + "  FROM [BookingHotel].[dbo].[customer]\n"
                + "  where customerId = '" + customerId + "'";//query sql select data
        try {
            rs = st.executeQuery(query);//execute query

            while (rs.next()) {
                int cusID = rs.getInt("customerId");//get id product 
                String name = rs.getString("fullName");
                String email = rs.getString("email");//get name product 
                String address = rs.getString("address");
                int gender = rs.getInt("gender");
                String phone = rs.getString("phone");
                int status = rs.getInt("status");//get status
                cus = new Customer(customerId, name, address, email, gender, phone, status);
            }

        } catch (SQLException ex) {
            System.out.println("Can't load data of list room");//display warning message
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return cus;
    }
}
