/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;


/**
 *
 * @author User
 */
public class DBConnection {
    public Connection open() {
        Connection con; // Object connection ke Database
        
        try {
            Class.forName("com.mysql.jdbc.Driver"); // Import JDBC Driver MySQL
            String url = "jdbc:mysql://127.0.0.1:3306/nyoba"; // URL dari Host Database
            con = DriverManager.getConnection(url, "root", ""); // Host, username, password
            return con;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }
}
