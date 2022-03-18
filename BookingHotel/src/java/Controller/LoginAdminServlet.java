/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dal.AdminDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
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
@WebServlet(name = "LoginAdminServlet", urlPatterns = {"/LoginAdminServlet"})
public class LoginAdminServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("loginAdmin.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            AdminDBContext admin = new AdminDBContext();
            HttpServletRequest reg = (HttpServletRequest) request;
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            admin.Login(username, (password));
            String url = reg.getRequestURI();
            if (admin != null) {
                session.setAttribute("login", username);
                response.sendRedirect("roommanage.jsp");
            } else {
                session.setAttribute("login", null);
                response.sendRedirect("loginAdmin.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginAdminServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
