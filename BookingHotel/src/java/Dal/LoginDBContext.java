/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class LoginDBContext {

    DBContext cn = new DBContext();
    Connection con;

    public String Login(String name, String pass) {
        String status = null;

        try {
            con = cn.getConnectDB();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT TOP (1) [username]\n"
                    + "      ,[password]\n"
                    + "      ,[customerID]\n"
                    + "  FROM [BookingHotel].[dbo].[customeraccount]\n"
                    + "  Where [username] = '"+name+"' and [password] = '"+pass+"'");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                status = rs.getString("customerID");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return status;
    }
    public int getCusID() {
        int status = 0;

        try {
            con = cn.getConnectDB();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT MAX(customerId) as id\n" +
                    "  FROM [BookingHotel].[dbo].[customer]");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                status = rs.getInt("id");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return status;
    }
    public boolean checkExist(String name) {
        boolean status = false;

        try {
            con = cn.getConnectDB();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT   [username]\n"
                    + "      ,[password]\n"
                    + "      ,[customerID]\n"
                    + "  FROM [BookingHotel].[dbo].[customeraccount]\n"
                    + "  Where [username] = '"+name+"'");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                status = true;
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return status;
    }

    public boolean Register(String name, String pass, int id) {
        boolean status = false;
        try {
            con = cn.getConnectDB();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT [dbo].[customeraccount] ([username], [password], [customerID]) VALUES ('"+name+"', '"+pass+"', "+id+")");
            ps.executeUpdate();
            status = true;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return status;
    }

    public boolean InsertInfor(String fullname, String address, String email, int genden, String phone, int status) {
        status = 1;
        genden = 1;
        boolean status1 = false;
        try {
            con = cn.getConnectDB();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT [dbo].[customer] ([fullName], [address], [email], [gender], [phone], [status]) VALUES ('" + fullname + "', '" + address + "','" + email + "'," + genden + ",'" + phone + "'," + status + ");");
            ps.executeUpdate();
            status1 = true;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return status1;
    }
}
