package usermanagement.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import jdbc.Koneksi;
import usermanagement.model.Supplier;

/**
 *
 * @author Administrator
 */
public class SupplierDAO {

    private static final String CREATE = "INSERT INTO supplier(nama, tanggal_daftar, nohp, alamat) VALUES (?, ?, ?, ?);";
    private static final String READ = "SELECT kode,nama,tanggal_daftar,nohp,alamat FROM supplier where kode =?";
    private static final String ALLREAD = "SELECT * FROM supplier";
    private static final String DELETE = "DELETE FROM supplier where kode = ?;";
    private static final String UPDATE = "UPDATE supplier set nama = ?,tanggal_daftar = ?,nohp= ?, alamat =? where kode = ?;";

    public SupplierDAO() {
    }

    public void insertSupplier(Supplier supplier) throws SQLException {
        System.out.println(CREATE);
        try (Connection connection = new Koneksi().bukaKoneksi(); PreparedStatement preparedStatement = connection.prepareStatement(CREATE)) {
            preparedStatement.setString(1, supplier.getNama());
            preparedStatement.setTimestamp(2, supplier.getTanggal_daftar());
            preparedStatement.setString(3, supplier.getNohp());
            preparedStatement.setString(4, supplier.getAlamat());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public Supplier selectSupplier(int kode) {
        Supplier supplier = null;
        try (Connection connection = new Koneksi().bukaKoneksi(); PreparedStatement preparedStatement = connection.prepareStatement(READ)) {
            preparedStatement.setInt(1, kode);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String nama = rs.getString("nama");
                Timestamp tanggal_daftar = rs.getTimestamp("tanggal_daftar");
                String nohp = rs.getString("nohp");
                String alamat = rs.getString("alamat");
                supplier = new Supplier(kode, nama, tanggal_daftar, nohp, alamat);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return supplier;
    }

    public List<Supplier> selectAllSupplier() {

        List<Supplier> supplier = new ArrayList<>();
        try (Connection connection = new Koneksi().bukaKoneksi(); PreparedStatement preparedStatement = connection.prepareStatement(ALLREAD)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int kode = rs.getInt("kode");
                String nama = rs.getString("nama");
                Timestamp tanggal_daftar = rs.getTimestamp("tanggal_daftar");
                String nohp = rs.getString("nohp");
                String alamat = rs.getString("alamat");
                supplier.add(new Supplier(kode, nama, tanggal_daftar, nohp, alamat));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return supplier;
    }

    public boolean deleteSupplier(int kode) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = new Koneksi().bukaKoneksi(); PreparedStatement statement = connection.prepareStatement(DELETE)) {
            statement.setInt(1, kode);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateSupplier(Supplier supplier) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = new Koneksi().bukaKoneksi(); PreparedStatement statement = connection.prepareStatement(UPDATE)) {
            statement.setString(1, supplier.getNama());
            statement.setTimestamp(2, supplier.getTanggal_daftar());
            statement.setString(3, supplier.getNohp());
            statement.setString(4, supplier.getAlamat());
            statement.setInt(5, supplier.getKode());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
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
