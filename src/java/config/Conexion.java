package config;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    
    Connection con;
    
    public Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/veterinaria","root","");
        } catch (Exception e) {
            System.err.println("ERROR: " + e);
        }
    }
    
    public Connection getConnection(){
        return con;
    }
    
}
