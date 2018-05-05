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

    public static List<Parents> UserReport() {
        Connection con = null;

        List<Parents> parentList = new ArrayList<>();
        try {
            con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("select * from parents ");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Parents p = new Parents();
                p.setFather_name(rs.getString(2));
                p.setMother_name(rs.getString(3));
                p.setEmail_id(rs.getString(4));
                p.setPhone(rs.getString(5));
                p.setStudent_id(rs.getInt(6));
                p.setPassword(rs.getString(7));
                p.setAddress(rs.getString(8));
                p.setUserName(rs.getString(9));
                parentList.add(p);
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

    public static Parents UserDetails(String name) {
        Connection con = null;
        Parents p = new Parents();

        try {
            con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("select * from parents where name=?");
            ps.setString(1, name);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                p.setFather_name(rs.getString(2));
                p.setMother_name(rs.getString(3));
                p.setEmail_id(rs.getString(4));
                p.setPhone(rs.getString(5));
                p.setStudent_id(rs.getInt(6));
                p.setPassword(rs.getString(7));
                p.setAddress(rs.getString(8));
                p.setUserName(rs.getString(9));

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
