/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import jdbc.Koneksi;
import model.Kategori;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class KategoriDAO {

    private static final String TAMBAH = "INSERT INTO kategori(kode_kategori, nama_kategori) VALUES(?, ?)";
    private static final String BACA = "SELECT * FROM kategori";
    private static final String CARI = "SELECT * FROM kategori WHERE kode_kategori = ?";
    private static final String UBAH = "UPDATE kategori SET nama_kategori=? WHERE kode_kategori=?";
    private static final String HAPUS = "DELETE FROM kategori WHERE kode_kategori=?";

    public void tambahKategori(Kategori kategori) throws SQLException {
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(TAMBAH)) {
            ps.setString(1, kategori.getKode_kategori());
            ps.setString(2, kategori.getNama_kategori());
            ps.executeUpdate();
        }
    }

    public List<Kategori> bacaKategori() throws SQLException {
        List<Kategori> daftarKategori = new ArrayList<>();
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(BACA)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Kategori kategori = new Kategori(
                        rs.getString("kode_kategori"),
                        rs.getString("nama_kategori")
                );
                daftarKategori.add(kategori);
            }
        }
        return daftarKategori;
    }

    public Kategori cariKategori(String Kode_kategori) throws SQLException {
        Kategori kategori = null;
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(CARI)) {
            ps.setString(1, Kode_kategori);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                kategori = new Kategori(
                        rs.getString("kode_kategori"),
                        rs.getString("nama_kategori")
                );
            }
        }
        return kategori;
    }

    public boolean ubahKategori(Kategori kategori) throws SQLException {
        boolean rowUpdated = false;
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(UBAH)) {
            ps.setString(1, kategori.getNama_kategori());
            rowUpdated = ps.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    public boolean hapusKategori(String kode_kategori) throws SQLException {
        boolean rowDeleted = false;
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(HAPUS)) {
            ps.setString(1, kode_kategori);
            rowDeleted = ps.executeUpdate() > 0;
        }
        return rowDeleted;
    }
}