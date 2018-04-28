package com.EBMS.Dao;

import com.EBMS.bean.ConnectionProvider;
import com.EBMS.bean.Login;
import java.sql.*;

public class LoginDao {

    public static String loginCheck(Login l) {
        ResultSet rs;
        String name;
        name = null;
        Connection con = null;
        try {
            con = ConnectionProvider.getCon();

            PreparedStatement ps = con.prepareStatement("select name from " + l.getUserType() + " where email=? and password=? ;");

            ps.setString(1, l.getEmail());
            ps.setString(2, l.getPassword());

            rs = ps.executeQuery();
            if (rs.next()) {
                name = rs.getString("name");
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
        return name;
    }
}
