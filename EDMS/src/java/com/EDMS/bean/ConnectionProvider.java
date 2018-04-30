package com.EDMS.bean;

import java.sql.Connection;
import static com.EDMS.bean.Provider.*;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Ish
 */
public class ConnectionProvider {

    public static Connection getCon() {
        Connection con = null;
        try {
            Class.forName(DRIVER);
            con = DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);

        } catch (ClassNotFoundException | SQLException e) {
            System.err.println(e);
        }
        return con;
    }
}
