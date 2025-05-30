package util;

import java.sql.*;

public class DatabaseManager {

    private static final String JDBC_DRIVER = "org.mariadb.jdbc.Driver";
    private static final String DB_NAME = "airline";
    private static final String DB_URL = "jdbc:mariadb://127.0.0.1/" + DB_NAME;
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public static Connection getConnection() throws SQLException{
        try{
            return DriverManager.getConnection(DB_URL, USER, PASSWORD);
        } catch (SQLException e){
            System.err.println("(e) Connection failed: " + e.getMessage());
            throw e;
        }
    }

}
