/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Department;
import model.Skill;

/**
 *
 * @author Ngo Tung Son
 */
public class SkillDBContext extends DBContext {
    public ArrayList<Skill> getSkills()
    {
        ArrayList<Skill> skills = new ArrayList<>();
        try {
            String sql = "SELECT skid,skname FROM Skill";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Skill s = new Skill();
                s.setId(rs.getInt("skid"));
                s.setName(rs.getString("skname"));
                skills.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SkillDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return skills;
    }
}
