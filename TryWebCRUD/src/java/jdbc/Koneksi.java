/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Koneksi {

    public Connection bukaKoneksi() throws SQLException {
        Connection connect = null;
        try {
            connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/uts_kelompok4", "root", "");
            return connect;
        } catch (SQLException e) {
            // Tangani pengecualian SQL
            throw e;
        }
    }

    public void tutupKoneksi(Connection connect) {
        try {
            if (connect != null) {
                connect.close();
            }
        } catch (SQLException e) {
            // Tangani pengecualian SQL saat menutup koneksi
            e.printStackTrace();
        }
    }
}
