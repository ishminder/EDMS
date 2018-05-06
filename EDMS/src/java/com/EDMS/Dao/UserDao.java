package com.EDMS.Dao;

import com.EDMS.bean.ConnectionProvider;
import com.EDMS.bean.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDao {

    public static int register(User u) {
        int rowsEff;
        rowsEff = 0;
        Connection con = null;
        try {
            con = ConnectionProvider.getCon();
            System.out.println("Going to run insert command\n");
            PreparedStatement ps = con.prepareStatement("insert into user(userid,passwd,email,level,enable) values(?,?,?,1,1);");
            ps.setString(1, u.getUserid());
            ps.setString(2, u.getPasswd());
            ps.setString(3, u.getEmail());
           
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

    public static List<User> UserReport() {
        Connection con = null;

        List<User> parentList = new ArrayList<>();
        try {
            con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("select * from parents ");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User p = new User();
               
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
        return parentList;
    }

    public static User UserDetails(String name) {
        Connection con = null;
        User p = new User();

        try {
            con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("select * from parents where name=?");
            ps.setString(1, name);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                

            } else {
                System.err.println("name = " + name + " in parentsDAo");
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
        return p;
    }
}
