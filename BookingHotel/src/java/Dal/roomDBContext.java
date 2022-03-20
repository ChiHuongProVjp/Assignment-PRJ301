/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
public class roomDBContext {
    //declare variables

    public static int numberPage = 10;
    DBContext cn = new DBContext();
    private Connection con;
    private PreparedStatement pst;
    private Statement st;
    private Statement st2;
    private ResultSet rs;
    private ResultSet rs2;
    private String query;
    private ArrayList<Room> listRoom;
    private ArrayList<Image> images;
    private String a = "";

    /**
     * constructor product model no parameter
     *
     * @throws SQLException
     */
    public roomDBContext() throws SQLException {
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

    public String getImage(int pId) throws SQLException {
        String sqlStr2 = "SELECT TOP (1) [imageId]\n"
                + "      ,[imageLink]\n"
                + "      ,[roomId]\n"
                + "  FROM [BookingHotel].[dbo].[image]\n"
                + "  where roomId ='" + pId + "'";
        this.st2 = this.con.createStatement();
        rs2 = st2.executeQuery(sqlStr2);
        while (rs2.next()) {
            a = rs2.getString("imageLink");
        }
        return a;
    }
    public int getRoomID() throws SQLException {
        int id = 0;
        String sqlStr2 = "SELECT MAX(roomId) as id\n" +
                        "  FROM [BookingHotel].[dbo].[room]";
        this.st2 = this.con.createStatement();
        rs2 = st2.executeQuery(sqlStr2);
        while (rs2.next()) {
            id = rs2.getInt("id");
        }
        return id;
    }

    public Double getPrice(int pId) {
        listRoom = new ArrayList<>();//declare variables
        query = "SELECT TOP (1) [roomId]\n"
                + "      ,[roomName]\n"
                + "      ,[price]\n"
                + "      ,[typeId]\n"
                + "      ,[status]\n"
                + "  FROM [BookingHotel].[dbo].[room]\n"
                + "  where roomId ='" + pId + "'";
        try {
            rs = st.executeQuery(query);//execute query

            while (rs.next()) {
                double price = rs.getDouble("price");//get price product
                return price;
            }

        } catch (SQLException ex) {
            System.out.println("Can't load data of list room");//display warning message
        } catch (Exception e) {
            System.out.println("Can't load data of list room");//display warning message
        }
        return 0.0;
    }

    public ArrayList<Room> loadProduct() {
        listRoom = new ArrayList<>();//declare variables
        query = "Select * from room";//query sql select data
        try {
            rs = st.executeQuery(query);//execute query

            while (rs.next()) {
                int roomID = rs.getInt("roomId");//get id product 
                String name = rs.getString("roomName");//get name product 
                double price = rs.getDouble("price");//get price product
                int typeId = rs.getInt("typeId");
                int status = rs.getInt("status");//get status
                String decription= rs.getString("decription");
                if (status != 0) {
                    listRoom.add(new Room(roomID, name, price, typeId, status,decription));
                }

            }

        } catch (SQLException ex) {
            System.out.println("Can't load data of list room");//display warning message
        } catch (Exception e) {
            System.out.println("Can't load data of list room");//display warning message
        }
        return listRoom;
    }
    public ArrayList<Room> loadAllProduct() {
        listRoom = new ArrayList<>();//declare variables
        query = "Select * from room";//query sql select data
        try {
            rs = st.executeQuery(query);//execute query

            while (rs.next()) {
                int roomID = rs.getInt("roomId");//get id product 
                String name = rs.getString("roomName");//get name product 
                double price = rs.getDouble("price");//get price product
                int typeId = rs.getInt("typeId");
                int status = rs.getInt("status");//get status
                String decription= rs.getString("decription");
                listRoom.add(new Room(roomID, name, price, typeId, status,decription));

            }

        } catch (SQLException ex) {
            System.out.println("Can't load data of list room");//display warning message
        } catch (Exception e) {
            System.out.println("Can't load data of list room");//display warning message
        }
        return listRoom;
    }
    public Room loadProductByID(int ID) {
        Room room = new Room();
        query = "Select * from room WHERE [roomId] = "+ID;//query sql select data
        try {
            rs = st.executeQuery(query);//execute query

            while (rs.next()) {
                int roomID = rs.getInt("roomId");//get id product 
                String name = rs.getString("roomName");//get name product 
                double price = rs.getDouble("price");//get price product
                int typeId = rs.getInt("typeId");
                int status = rs.getInt("status");//get status
                String decription= rs.getString("decription");
                room = new Room(roomID, name, price, typeId, status,decription);

            }

        } catch (SQLException ex) {
            System.out.println("Can't load data of list room");//display warning message
        } catch (Exception e) {
            System.out.println("Can't load data of list room");//display warning message
        }
        return room;
    }

    public int insertRoom(Room room) throws SQLException {
        query = "INSERT [dbo].[room] ([roomName], [price], [decription],[typeId],[status]) VALUES (?,?,?,?,?)";//query insert
        try {
            pst = con.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);//create prepare statement

            pst.setString(1, room.getRoomName());//set name product
            pst.setDouble(2, room.getPrice());//set price product
            pst.setString(3, room.getDecription());//set size product
            pst.setInt(4, 1);
            pst.setInt(5, 1);
            pst.executeUpdate();
            rs = pst.getGeneratedKeys();
            rs.next();//

            return rs.getInt(1);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());//display warning message
            return 0;
        } catch (Exception e) {
            System.out.println("can't insert product to list.");//display warning message
            return 0;

        }
    }
    public int insertImage(String image, int product) throws SQLException {
        query = "INSERT [dbo].[image] ([imageLink], [roomId]) VALUES (N'"+image+"', "+product+")";//query insert
        try {
            pst = con.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);//create prepare statement

            pst.executeUpdate();
            rs = pst.getGeneratedKeys();
            rs.next();//

            return rs.getInt(1);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());//display warning message
            return 0;
        } catch (Exception e) {
            System.out.println("can't insert product to list.");//display warning message
            return 0;

        }
    }

    public int updateStatusRoom(int idroom, int status) {
        query = "UPDATE [dbo].[orders] SET [status] = " + status + " WHERE [orders].[roomId] = '" + idroom + "'";//query insert
        //UPDATE [dbo].[tblProduct] SET [productName] = '"+product.getProductName()+"',[image] = '"+product.getImage()+"', [price]= '"+product.getPrice()+"', [quantity] = "+product.getQuantity()+", [catagoryID] = "+product.getCategoryID()+",[importDate]= '"+product.getImportDate()+"',[usingDate]= '"+product.getUsingDate()+"' WHERE productId = "+id+";"
        try {
            pst = con.prepareStatement(query);
            pst.executeUpdate();
            System.out.println(query);
            return 1;
        } catch (SQLException ex) {
            System.out.println("Can't update product.");//display warning message
            return 0;
        } catch (Exception e) {
            System.out.println("Can't update product.");//display warning message
            return 0;
        }
    }
    public boolean updateRoom(Room room) {
        query = "UPDATE [dbo].[room] SET [roomname] = '" + room.getRoomName() + "',[price] = '" + room.getPrice()+ "',[decription] = '" + room.getDecription()+ "' WHERE [room].[roomId] = '" + room.getRoomId() + "'";//query insert
        try {
            pst = con.prepareStatement(query);
            pst.executeUpdate();
            System.out.println(query);
            return true;
        } catch (SQLException ex) {
            System.out.println("Can't update product.");//display warning message
            return false;
        } catch (Exception e) {
            System.out.println("Can't update product.");//display warning message
            return false;
        }
    }
    public boolean updateImage(String image, int id) {
        query = "UPDATE [dbo].[image] SET [imageLink] = '" + image + "' WHERE [image].[roomId] = '" + id + "'";//query insert
        try {
            pst = con.prepareStatement(query);
            pst.executeUpdate();
            System.out.println(query);
            return true;
        } catch (SQLException ex) {
            System.out.println("Can't update product.");//display warning message
            return false;
        } catch (Exception e) {
            System.out.println("Can't update product.");//display warning message
            return false;
        }
    }

    public int updateClockRoom(int idroom, int status) {
        //query = "UPDATE `room` SET `status` = "+status+" WHERE `room`.`roomId` = "+idroom;//query insert
        query = "UPDATE [dbo].[room] SET [status] = " + status + " WHERE [room].[roomId] = '" + idroom + "'";
        try {
            pst = con.prepareStatement(query);
            pst.executeUpdate();
            System.out.println(query);
            return 1;
        } catch (SQLException ex) {
            System.out.println("Can't clock room.");//display warning message
            return 0;
        } catch (Exception e) {
            System.out.println("Can't clock room.");//display warning message
            return 0;
        }
    }

}
