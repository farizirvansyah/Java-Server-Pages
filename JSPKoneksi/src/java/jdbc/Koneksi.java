package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Administrator
 */
public class Koneksi {
    public Connection bukaKoneksi() throws SQLException {
        Connection connect;
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
                connect=DriverManager.getConnection
                        ("jdbc:mysql://localhost:3306/biodata","root","");
                return connect;
        }
        catch(Exception exc){
            
        }
        return null;
    }
}