package com.EDMS.Dao;

import com.EDMS.bean.ConnectionProvider;
import com.EDMS.bean.Login;
import java.sql.*;

public class LoginDao {

    public static int loginCheck(Login l) {
        ResultSet rs;
      
        int level;
       level=0;
        Connection con = null;
        try {
            con = ConnectionProvider.getCon();

            PreparedStatement ps = con.prepareStatement("select level from user where userid=? and passwd=? ;");

            ps.setString(1, l.getName());
            ps.setString(2, l.getPassword());

            rs = ps.executeQuery();
            if (rs.next()) {
                level = rs.getInt("level");
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
        return level;
    }
}
