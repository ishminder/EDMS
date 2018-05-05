/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.EDMS.Dao;

import com.EDMS.bean.ConnectionProvider;
import com.EDMS.bean.Pfolder;
import com.EDMS.bean.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
            ps.setString(1, p.getName());
            ps.setString(2, p.getPath());
            ps.setString(3, p.getDescription());
           
            rowsEff = ps.executeUpdate();
            System.out.println("Executed Update //PfolderDao!!\n");
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
     public static List<Pfolder> view_pfolder() {
        Connection con = null;

        List<Pfolder> pfolder_list = new ArrayList<>();
        try {
            con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("select * from pfolder ");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
               Pfolder p=new Pfolder();
               p.setName(rs.getString(2));
              p.setPath(rs.getString(3));
               p.setDescription(rs.getString(4));
               
                pfolder_list.add(p);
            }

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
        return pfolder_list;
    }


}
