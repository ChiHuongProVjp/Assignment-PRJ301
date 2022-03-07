/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;
import model.Skill;

/**
 *
 * @author Ngo Tung Son
 */
public class EmployeeDBContext extends DBContext {
    public void insert(Employee e)
    {
        try {
            String sql_insert_emp = "INSERT INTO [Employee]\n" +
                    "           ([eid]\n" +
                    "           ,[ename]\n" +
                    "           ,[gender]\n" +
                    "           ,[dob]\n" +
                    "           ,[username])\n" +
                    "     VALUES\n" +
                    "           (?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?)";
            
            String sql_insert_emp_skill = "INSERT INTO [Employee_Skill]\n" +
                    "           ([skid]\n" +
                    "           ,[eid])\n" +
                    "     VALUES\n" +
                    "           (?\n" +
                    "           ,?)";
            connection.setAutoCommit(false);
            
            PreparedStatement stm_insert_emp = connection.prepareStatement(sql_insert_emp);
            stm_insert_emp.setInt(1, e.getId());
            stm_insert_emp.setString(2, e.getName());
            stm_insert_emp.setBoolean(3, e.isGender());
            stm_insert_emp.setDate(4, e.getDob());
            stm_insert_emp.setString(5, e.getAccount().getUsername());
            stm_insert_emp.executeUpdate();
            
            for (Skill skill : e.getSkills()) {
                PreparedStatement stm_insert_skill = connection.prepareStatement(sql_insert_emp_skill);
                stm_insert_skill.setInt(1, skill.getId());
                stm_insert_skill.setInt(2, e.getId());
                stm_insert_skill.executeUpdate();
            }
            connection.commit();
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDBContext.class.getName()).log(Level.SEVERE, null, ex);
            try {
                connection.rollback();
            } catch (SQLException ex1) {
                Logger.getLogger(EmployeeDBContext.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
        finally
        {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException ex) {
                Logger.getLogger(EmployeeDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
             //close connection       
        }
        
    }
}
