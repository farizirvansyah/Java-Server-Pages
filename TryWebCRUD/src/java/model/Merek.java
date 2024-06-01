/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Administrator
 */
public class Merek {

    protected String kode_merek;
    protected String nama_merek;

    public Merek(String nama_merek) {
        this.nama_merek = nama_merek;
    }

    public Merek(String kode_merek, String nama_merek) {
        this.kode_merek = kode_merek;
        this.nama_merek = nama_merek;
    }

    public String getKode_merek() {
        return kode_merek;
    }

    public void setKode_merek(String kode_merek) {
        this.kode_merek = kode_merek;
    }

    public String getNama_merek() {
        return nama_merek;
    }

    public void setNama_merek(String nama_merek) {
        this.nama_merek = nama_merek;
    }
}