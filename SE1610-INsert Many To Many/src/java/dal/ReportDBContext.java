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
import model.Account;
import model.Rect;
import model.Report;

/**
 *
 * @author SAP-LAP-FPT
 */
public class ReportDBContext extends DBContext {
    public ArrayList<Report> getReports(String username)
    {
        ArrayList<Report> reports = new ArrayList<>();
        try {
            String sql = "SELECT r.rid,r.title,a.username FROM Report r INNER JOIN Account a ON r.username = a.username\n" +
                        "WHERE a.username = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Report r = new Report();
                r.setId(rs.getInt("rid"));
                r.setTitle(rs.getString("title"));
                Account account = new Account();
                account.setUsername(rs.getString("username"));
                r.setCreatedBy(account);
                reports.add(r);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RectDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return reports;
    }
}
