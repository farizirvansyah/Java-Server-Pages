/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import jdbc.Koneksi;
import model.Barang;
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
public class BarangDAO {

    private static final String TAMBAH = "INSERT INTO barang(sku, nama_barang, harga_jual, harga_beli, kode_kategori, kode_merek, stok, keterangan) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String BACA = "SELECT * FROM barang";
    private static final String UBAH = "UPDATE barang SET nama_barang=?, harga_jual=?, harga_beli=?, kode_kategori=?, kode_merek=?, stok=?, keterangan=? WHERE sku=?";
    private static final String HAPUS = "DELETE FROM barang WHERE sku=?";
    private static final String CARI = "SELECT * FROM barang WHERE sku=?";

    public void tambahBarang(Barang barang) {
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(TAMBAH)) {
            ps.setString(1, barang.getSku());
            ps.setString(2, barang.getNama_barang());
            ps.setInt(3, barang.getHarga_jual());
            ps.setInt(4, barang.getHarga_beli());
            ps.setString(5, barang.getKode_kategori());
            ps.setString(6, barang.getKode_merek());
            ps.setInt(7, barang.getStok());
            ps.setString(8, barang.getKeterangan());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Barang> bacaBarang() {
        List<Barang> daftarBarang = new ArrayList<>();
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(BACA)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Barang barang = new Barang(
                        rs.getString("sku"),
                        rs.getString("nama_barang"),
                        rs.getInt("harga_jual"),
                        rs.getInt("harga_beli"),
                        rs.getString("kode_kategori"),
                        rs.getString("kode_merek"),
                        rs.getInt("stok"),
                        rs.getString("keterangan")
                );
                daftarBarang.add(barang);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return daftarBarang;
    }

    public boolean ubahBarang(Barang barang) {
        boolean rowUpdated = false;
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(UBAH)) {
            ps.setString(1, barang.getNama_barang());
            ps.setInt(2, barang.getHarga_jual());
            ps.setInt(3, barang.getHarga_beli());
            ps.setString(4, barang.getKode_kategori());
            ps.setString(5, barang.getKode_merek());
            ps.setInt(6, barang.getStok());
            ps.setString(7, barang.getKeterangan());
            ps.setString(8, barang.getSku());
            rowUpdated = ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowUpdated;
    }

    public boolean hapusBarang(String sku) {
        boolean rowDeleted = false;
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(HAPUS)) {
            ps.setString(1, sku);
            rowDeleted = ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDeleted;
    }

    public Barang cariBarang(String sku) {
        Barang barang = null;
        try (Connection connect = new Koneksi().bukaKoneksi(); PreparedStatement ps = connect.prepareStatement(CARI)) {
            ps.setString(1, sku);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                barang = new Barang(
                        rs.getString("sku"),
                        rs.getString("nama_barang"),
                        rs.getInt("harga_jual"),
                        rs.getInt("harga_beli"),
                        rs.getString("kode_kategori"),
                        rs.getString("kode_merek"),
                        rs.getInt("stok"),
                        rs.getString("keterangan")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return barang;
    }
}
