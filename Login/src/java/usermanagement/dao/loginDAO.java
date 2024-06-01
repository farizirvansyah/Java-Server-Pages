/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package usermanagement.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jdbc.Koneksi;
import usermanagement.model.LoginBean;

/**
 *
 * @author Administrator
 */
public class loginDAO {

    public boolean validate(LoginBean loginBean) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = new Koneksi().bukaKoneksi(); PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM login WHERE username = ? and password = ? ")) {
            preparedStatement.setString(1, loginBean.getUsername());
            preparedStatement.setString(2, loginBean.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException sQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + sQLException.getSQLState());
                System.err.println("Error Code: " + sQLException.getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
