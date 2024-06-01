/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package usermanagement.model;

import java.sql.Timestamp;

/**
 *
 * @author Administrator
 */
public class Supplier {

    protected int kode;
    protected String nama;
    protected Timestamp tanggal_daftar;
    protected String nohp;
    protected String alamat;

    public Supplier(int kode, String nama, Timestamp tanggal_daftar, String nohp, String alamat) {
    }

    public Supplier(String nama, Timestamp tanggal_daftar, String nohp, String alamat) {
        super();
        this.nama = nama;
        this.tanggal_daftar = tanggal_daftar;
        this.nohp = nohp;
        this.alamat = alamat;
    }

    public int getKode() {
        return kode;
    }

    public void setKode(int kode) {
        this.kode = kode;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public Timestamp getTanggal_daftar() {
        return tanggal_daftar;
    }

    public void setTanggal_daftar(Timestamp tanggal_daftar) {
        this.tanggal_daftar = tanggal_daftar;
    }

    public String getNohp() {
        return nohp;
    }

    public void setNohp(String nohp) {
        this.nohp = nohp;
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }
}
