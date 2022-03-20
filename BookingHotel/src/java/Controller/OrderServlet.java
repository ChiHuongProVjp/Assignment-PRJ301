/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dal.CustomerDBContext;
import Dal.OrderDBContext;
import Dal.roomDBContext;
import Model.Customer;
import Model.Order;
import Model.Room;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
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
@WebServlet(name = "OrderServlet", urlPatterns = {"/OrderServlet"})
public class OrderServlet extends HttpServlet {

//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        request.getRequestDispatcher("indexLogin.jsp").forward(request, response);
//    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            if (session.getAttribute("ID") != null) {
                int cusID = Integer.valueOf(session.getAttribute("ID").toString());
                CustomerDBContext cusDAO = new CustomerDBContext();
                Customer cus = cusDAO.getCustomer(cusID);
                if (cus != null) {
                    int roomID = Integer.valueOf(request.getParameter("roomID"));
                    roomDBContext roomDAO = new roomDBContext();
                    double price = roomDAO.getPrice(roomID);
                    String dateAr = request.getParameter("dateAr");
                    String dateDe = request.getParameter("dateDe");
                    Order order = new Order(1, cusID, cus.getAddress(), dateAr, dateDe, roomID, price, 2);
                    OrderDBContext orderDAO = new OrderDBContext();
                    int check = orderDAO.insertOrder(order);
                    if (check <= 0) {
                        response.sendRedirect("login.jsp");
                    } else {
                        response.sendRedirect("index.jsp");
                    }
                }

            } else {
                response.sendRedirect("login.jsp");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

}
