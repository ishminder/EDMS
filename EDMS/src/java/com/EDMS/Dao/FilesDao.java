/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.EDMS.Dao;

import com.EDMS.bean.ConnectionProvider;
import com.EDMS.bean.Files;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ish
 */
public class FilesDao {

    public static int register(Files f) {
        int rowsEff;
        rowsEff = 0;
        Connection con = null;
        try {
            con = ConnectionProvider.getCon();
            System.out.println("Going to run insert command\n");
            PreparedStatement ps = con.prepareStatement("insert into files(name,description,author) values(?,?,?);");
            ps.setString(1, f.getName());
            ps.setString(2, f.getDescription());
            ps.setString(3, f.getAuthor());

            rowsEff = ps.executeUpdate();
            System.out.println("Executed Update //FilesDao!!\n");
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

    public static List<Files> view_files() {
        Connection con = null;

        List<Files> files_list = new ArrayList<>();
        try {
            con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("select * from files");
          
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Files f = new Files();
                f.setName(rs.getString(2));
                f.setDescription(rs.getString(3));
                f.setAuthor(rs.getString(4));
                files_list.add(f);
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
        return files_list;
    }

}
