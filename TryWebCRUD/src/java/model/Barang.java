/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Administrator
 */
public class Barang {

    private String sku;
    private String nama_barang;
    private int harga_jual;
    private int harga_beli;
    private String kode_kategori;
    private String kode_merek;
    private int stok;
    private String keterangan;

    public Barang(String sku, String nama_barang, int harga_jual, int harga_beli, String kode_kategori, String kode_merek, int stok, String keterangan) {
        this.sku = sku;
        this.nama_barang = nama_barang;
        this.harga_jual = harga_jual;
        this.harga_beli = harga_beli;
        this.kode_kategori = kode_kategori;
        this.kode_merek = kode_merek;
        this.stok = stok;
        this.keterangan = keterangan;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public String getNama_barang() {
        return nama_barang;
    }

    public void setNama_barang(String nama_barang) {
        this.nama_barang = nama_barang;
    }

    public int getHarga_jual() {
        return harga_jual;
    }

    public void setHarga_jual(int harga_jual) {
        this.harga_jual = harga_jual;
    }

    public int getHarga_beli() {
        return harga_beli;
    }

    public void setHarga_beli(int harga_beli) {
        this.harga_beli = harga_beli;
    }

    public String getKode_kategori() {
        return kode_kategori;
    }

    public void setKode_kategori(String kode_kategori) {
        this.kode_kategori = kode_kategori;
    }

    public String getKode_merek() {
        return kode_merek;
    }

    public void setKode_merek(String kode_merek) {
        this.kode_merek = kode_merek;
    }

    public int getStok() {
        return stok;
    }

    public void setStok(int stok) {
        this.stok = stok;
    }

    public String getKeterangan() {
        return keterangan;
    }

    public void setKeterangan(String keterangan) {
        this.keterangan = keterangan;
    }

}
