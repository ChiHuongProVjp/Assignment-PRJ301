/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.employee;

import controller.auth.BaseAuthController;
import dal.EmployeeDBContext;
import dal.SkillDBContext;
import dal.StudentDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.Department;
import model.Employee;
import model.Skill;
import model.Student;

/**
 *
 * @author Ngo Tung Son
 */
public class InsertController extends BaseAuthController {

    

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
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SkillDBContext db = new SkillDBContext();
        ArrayList<Skill> skills = db.getSkills();
        request.setAttribute("skills", skills);
        request.getRequestDispatcher("view/employee/insert.jsp").forward(request, response);
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
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String raw_id = request.getParameter("id");
        String raw_name = request.getParameter("name");
        String raw_gender = request.getParameter("gender");
        String raw_dob = request.getParameter("dob");
        String[] skids = request.getParameterValues("skid");
        
        //processing - validate data
        int id = Integer.parseInt(raw_id);
        String name = raw_name;
        boolean gender = (raw_gender.equals("male"));
        Date dob = Date.valueOf(raw_dob);
       
        
        // construct employee object
        Employee emp = new Employee();
        emp.setId(id);
        emp.setName(name);
        emp.setGender(gender);
        emp.setDob(dob);
        emp.setAccount((Account)request.getSession().getAttribute("account"));
        
        for (String item : skids) {
            int skid = Integer.parseInt(item);
            Skill sk = new Skill();
            sk.setId(skid);
            emp.getSkills().add(sk);
        }
        EmployeeDBContext db = new EmployeeDBContext();
        db.insert(emp);
        response.getWriter().println("done!");
        
        
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
