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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "updateRoom", urlPatterns = {"/updateRoom"})
public class updateRoom extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(session.getAttribute("login")!=null){
            request.getRequestDispatcher("loginAdmin.jsp").forward(request, response);
        }else{
            request.getRequestDispatcher("roommanage.jsp").forward(request, response);
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpServletRequest reg = (HttpServletRequest) request;
        String roomname = request.getParameter("roomname");
        double price = Double.parseDouble(request.getParameter("price"));
        String image = request.getParameter("image");
        int id = Integer.valueOf(request.getParameter("id"));
        String decription = request.getParameter("decription");
        Room room = new Room(id, roomname, price, 1,1 ,decription);
        roomDBContext roomD = null;
        try {
            roomD = new roomDBContext();

            boolean check = roomD.updateRoom(room);
            if (check) {
                roomD.updateImage(image, id);
                response.sendRedirect("roommanage.jsp");
            } else {
                response.sendRedirect("updateRoom.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(addRoomServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
