package util;

import java.sql.*;

public class DatabaseManager {

    private static final String JDBC_DRIVER = "org.mariadb.jdbc.Driver";
    private static final String DB_NAME = "airline";
    private static final String DB_URL = "jdbc:mariadb://127.0.0.1/" + DB_NAME;
    private static final String USER = "root";
    private static final String PASSWORD = "";


    static String testSql = "SELECT * FROM country";

    public static Connection getConnection() throws SQLException{
        try(Connection conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(testSql);){
            while(rs.next()){
                System.out.println(rs.getString(2));
            }
            return conn;
        } catch (SQLException ex){
            System.err.println("(e) Connection failed: " + ex.getMessage());
            throw ex;
        }
    }

}
