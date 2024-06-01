/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.Serializable;
import java.security.Timestamp;

/**
 *
 * @author Administrator
 */
public class User implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private int id_user; // Menyesuaikan dengan kolom id_user
    private String username;
    private String password;
    private String nama_user; // Menyesuaikan dengan kolom nama_user
    private Timestamp tanggal_dibuat; // Menyesuaikan dengan kolom tanggal_dibuat

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNama_user() {
        return nama_user;
    }

    public void setNama_user(String nama_user) {
        this.nama_user = nama_user;
    }

    public Timestamp getTanggal_dibuat() {
        return tanggal_dibuat;
    }

    public void setTanggal_dibuat(Timestamp tanggal_dibuat) {
        this.tanggal_dibuat = tanggal_dibuat;
    }
}
