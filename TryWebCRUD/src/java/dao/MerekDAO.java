/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import jdbc.Koneksi;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Merek;

/**
 *
 * @author Administrator
 */
public class MerekDAO {

    private static final String TAMBAH = "INSERT INTO merek (kode_merek, nama_merek) VALUES (?, ?);";
    private static final String BACA = "SELECT * FROM merek";
    private static final String CARI = "SELECT * FROM merek WHERE kode_merek =?";
    private static final String UBAH = "UPDATE merek set nama_merek = ? WHERE kode_merek = ?;";
    private static final String HAPUS = "DELETE FROM merek WHERE kode_merek = ?;";

    public void tambahMerek(Merek merek) throws SQLException {
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(TAMBAH)) {
            ps.setString(1, merek.getKode_merek());
            ps.setString(2, merek.getNama_merek());
            ps.executeUpdate();
        }
    }

    public List<Merek> bacaMerek() throws SQLException {
        List<Merek> daftarMerek = new ArrayList<>();
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(BACA)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Merek merek = new Merek(
                        rs.getString("kode_merek"),
                        rs.getString("nama_merek")
                );
                daftarMerek.add(merek);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return daftarMerek;
    }

    public Merek cariMerek(String Kode_merek) throws SQLException {
        Merek merek = null;
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(CARI)) {
            ps.setString(1, Kode_merek);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                merek = new Merek(
                        rs.getString("kode_merek"),
                        rs.getString("nama_merek")
                );
            }
        }
        return merek;
    }

    public boolean ubahMerek(Merek merek) throws SQLException {
        boolean rowUpdated = false;
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(UBAH)) {
            ps.setString(1, merek.getNama_merek());
            rowUpdated = ps.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    public boolean hapusMerek(String kode_merek) throws SQLException {
        boolean rowDeleted = false;
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(HAPUS)) {
            ps.setString(1, kode_merek);
            rowDeleted = ps.executeUpdate() > 0;
        }
        return rowDeleted;
    }
}
