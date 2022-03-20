package Controller;

import Dal.roomDBContext;
import Model.Room;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "addRoomServlet", urlPatterns = {"/addRoomServlet"})
public class addRoomServlet extends HttpServlet {

//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        request.getRequestDispatcher("indexLogin.jsp").forward(request, response);
//    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpServletRequest reg = (HttpServletRequest) request;
        String roomname = request.getParameter("roomname");
        double price = Double.parseDouble(request.getParameter("price"));
        String decription = request.getParameter("decription");
        String Image = request.getParameter("Image");
        Room room = new Room(1, roomname, price, 1, 1,decription);
        roomDBContext roomD = null;
        try {
            roomD = new roomDBContext();

            int check = roomD.insertRoom(room);
            if (check > 0) {
                roomD.insertImage(Image, roomD.getRoomID());
                response.sendRedirect("roommanage.jsp");
            } else {
                response.sendRedirect("addnewroom.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(addRoomServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
