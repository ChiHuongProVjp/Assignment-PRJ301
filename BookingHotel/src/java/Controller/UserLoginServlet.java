package Controller;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Dal.LoginDBContext;

/**
 *
 * @author Admin
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpServletRequest reg = (HttpServletRequest) request;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        session.setAttribute("username", username);
        LoginDBContext log = new LoginDBContext();
        String login = log.Login(username, password);

        if (login != null) {
            session.setAttribute("ID", login);
            RequestDispatcher dispatcher = request.getRequestDispatcher("indexLogin.jsp");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }

    }
}
