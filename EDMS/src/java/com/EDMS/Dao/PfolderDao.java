/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.EDMS.Dao;

import com.EDMS.bean.ConnectionProvider;
import com.EDMS.bean.Pfolder;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Ish
 */
public class PfolderDao {
    public static int register(Pfolder p) {
        int rowsEff;
        rowsEff = 0;
        Connection con = null;
        try {
            con = ConnectionProvider.getCon();
            System.out.println("Going to run insert command\n");
            PreparedStatement ps = con.prepareStatement("insert into pfolder(name,path,description,access) values(?,?,?,122);");
            ps.setString(1, p.getPath());
            ps.setString(2, p.getName());
            ps.setString(3, p.getDescription());
           
            rowsEff = ps.executeUpdate();
            System.out.println("Executed Update //UserDao!!\n");
        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
        return rowsEff;
    }

}
