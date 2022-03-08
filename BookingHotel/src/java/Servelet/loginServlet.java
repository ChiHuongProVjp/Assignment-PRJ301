package Servelet;


import DAO.AccountDAO;
import DTO.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class loginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try(PrintWriter out = response.getWriter()) {
            String email = request.getParameter("txtemail");
            String password = request.getParameter("txtpassword");
            String save = request.getParameter("savelogin");
            Account acc = null;
            try {
                if(email == null || email =="" ||password == null || password ==""){
                    Cookie[] c = request.getCookies();
                    String token = "";
                    if(c != null){
                        for (Cookie cookie : c) {
                            if(cookie.getName().equals("selector")){
                                token = cookie.getValue();
                            }
                        }
                    }
                    if(!token.equals("")){
                        response.sendRedirect("personalPage.jsp");
                    }else{
                        response.sendRedirect("errorpage.html");
                    }
                }else{
                    acc = AccountDAO.getAccount(email, password);
                if (acc!=null) {
                    if (acc.getRole() == 1) {
                        response.sendRedirect("homeadmin.html");
                    }else{
                        HttpSession session = request.getSession(true);
                        if(session!=null){
                            session.setAttribute("name", acc.getFullname());
                            session.setAttribute("email", email);
                            response.sendRedirect("personalPage.jsp");
                            
                            if(save!=null){
                                String token = "ABC123";
                                AccountDAO.updatetoken(token, email);
                                Cookie cookie = new Cookie("selector",token);
                                cookie.setMaxAge(60 * 60);
                                response.addCookie(cookie);
                            }
                            response.sendRedirect("personalPage.jsp");
                        }
                    }
                }else{
                    response.sendRedirect("invalid.html");
                }
                }
                
            } catch (Exception e) {
            }
        } catch (Exception e) {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
